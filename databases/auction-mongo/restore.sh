#!/bin/bash

echo "Waiting for MongoDB to start..."
while ! nc -z localhost 27017; do
  sleep 1
done
echo "MongoDB started"

mongorestore dump/