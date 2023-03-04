FROM mongo
RUN apt-get update && apt-get install -y netcat
WORKDIR /db/
COPY ./dump ./dump
CMD mongod --fork --logpath /var/log/mongodb.log; \
    mongorestore ./dump/; \
    mongod --shutdown; \
    docker-entrypoint.sh mongod