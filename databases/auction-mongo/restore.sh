#!/bin/bash

# echo "Waiting for MongoDB to start..."
# while ! nc -z localhost 27017; do
#   echo "Sleeping 1 sec..."
#   sleep 1
# done
# echo "MongoDB started"

sleep 10
mongorestore dump/