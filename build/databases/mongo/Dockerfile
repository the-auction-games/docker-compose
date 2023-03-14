# Note: Run this Dockerfile with the context of the parent folder.

# From Mongo Image
FROM mongo

# Install curl for backup script
RUN apt-get update && apt-get install -y curl

# Dump file to initialize database
ARG DUMP_DIR=none

# Backup env variables
ENV DB_TYPE=mongo
ENV DB_NAME=none
ENV API_KEY=none

# Set working directory
WORKDIR /db/

# Copy dump file
COPY ./${DB_TYPE}/dump/${DUMP_DIR} ./dump/${DUMP_DIR}

# Copy backup script
COPY ./backup.sh ./backup.sh

# Run recovery script, backup script, and mongo
CMD mongod --fork --logpath /var/log/mongodb.log; \
    mongorestore dump/; \
    mongod --shutdown; \
    ./backup.sh ${DB_TYPE} ${DB_NAME} ${API_KEY} & \
    docker-entrypoint.sh mongod