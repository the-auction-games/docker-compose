# Note: Run this Dockerfile with the context of the parent folder.

# From Postgres Image
FROM postgres:alpine

# Install curl for backup script
RUN apk update && apk add -f curl jq

# Postgres env variables
ENV POSTGRES_PASSWORD=password

# Dump file to initialize database
ARG DUMP_FILE=none

# Backup env variables
ENV DB_TYPE=postgres
ENV DB_NAME=none
ENV DROP_BOX_CLIENT_ID=none
ENV DROP_BOX_CLIENT_SECRET=none
ENV DROP_BOX_REFRESH_TOKEN=none

# Set working directory
WORKDIR /db/

# Copy dump file to entrypoint initialization folder
COPY ./${DB_TYPE}/${DUMP_FILE} /docker-entrypoint-initdb.d/dump.sql

# Copy backup script
COPY ./backup.sh ./backup.sh

# Run backup script with postgres
CMD ./backup.sh ${DB_TYPE} ${DB_NAME} ${DROP_BOX_CLIENT_ID} ${DROP_BOX_CLIENT_SECRET} ${DROP_BOX_REFRESH_TOKEN} & \
    docker-entrypoint.sh postgres