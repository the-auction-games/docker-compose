# Note: Run this Dockerfile with the context of the parent folder.

# From Postgres Image
FROM postgres:alpine

# Install curl for backup script
RUN apk update && apk add -f curl

# Postgres env variables
ENV POSTGRES_PASSWORD=password

# Dump file to initialize database
ARG DUMP_FILE=none

# Backup env variables
ENV DB_TYPE=postgres
ENV DB_NAME=none
ENV API_KEY=none

# Set working directory
WORKDIR /db/

# Copy dump file to entrypoint initialization folder
COPY ./${DB_TYPE}/${DUMP_FILE} /docker-entrypoint-initdb.d/dump.sql

# Copy backup script
COPY ./backup.sh ./backup.sh

# Run backup script with postgres
CMD ./backup.sh ${DB_TYPE} ${DB_NAME} ${API_KEY} & \
    docker-entrypoint.sh postgres