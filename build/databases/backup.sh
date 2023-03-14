#!/bin/sh

# Setup args
DB_TYPE=$1
DB_NAME=$2
API_KEY=$3

# check if number of args is correct
if [ $# != 3 ] || ([ "$DB_TYPE" != "mongo" ] && [ "$DB_TYPE" != "postgres" ]); then
    # output debug message
    echo "Usage: backup-script.sh <DB_TYPE={mongo, postgres}> <DB_NAME> <DROP_BOX_API_KEY>"
    
    # exit with error
    exit 1
fi

# this script will backup the database every day at 00:00
while true; do

    # check if it is time to backup
    # if [ "$(date +%H:%M)" = "00:00" ]; then
    if [ "$(date +%S)" = "00" ]; then

        # debug that it is time to backup
        echo "Backing up...$(date +%H:%M:%S)"

        # dump folder
        DUMP_FOLDER="/home/backups"

        # make directory if not exist
        if [ ! -d "$DUMP_FOLDER" ]; then
            mkdir -p $DUMP_FOLDER
        fi

        # date format
        DATE_FORMAT=$(date +%Y-%m-%d-%H-%M-%S)

        # the file extension
        DUMP_FILE_EXTENSION=".bin.gz"
        if [ "$DB_TYPE" = "postgres" ]; then
            DUMP_FILE_EXTENSION=".sql.gz"
        fi

        # dump file name (database name + date + file extension)
        # example: testing-dump-2020-01-01-00-00-00.bin.gz
        DUMP_FILE_NAME="$DB_NAME-dump-$DATE_FORMAT$DUMP_FILE_EXTENSION"

        echo $DUMP_FILE_NAME
        
        # dump file path
        DUMP_FILE_PATH="$DUMP_FOLDER/$DUMP_FILE_NAME"

        # dump the database
        if [ "$DB_TYPE" = "mongo" ]; then
            # dump Mongo
            mongodump --gzip --archive=$DUMP_FILE_PATH --db=$DB_NAME
        else
            # dump Postgres
            pg_dump -U postgres $DB_NAME | gzip > $DUMP_FILE_PATH
        fi

        # push to dropbox
        curl -X POST https://content.dropboxapi.com/2/files/upload \
            --header "Authorization: Bearer $API_KEY" \
            --header "Dropbox-API-Arg: {\"path\": \"/$DUMP_FILE_NAME\"}" \
            --header "Content-Type: application/octet-stream" \
            --data-binary @$DUMP_FILE_PATH

        # remove old backups more than 7 days ago
        find $DUMP_FOLDER -type f -mtime +7 -exec rm -rf {} \;
    else
        # debug that it is not ready yet to backup
        echo "Waiting...$(date +%H:%M:%S)"
    fi

    # sleep for 60 seconds
    # sleep 60
    sleep 1

done