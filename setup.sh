#!/bin/bash

# This is the setup script for the auction games project.
# It will clone all the repos and create the necessary directories.

# the applications build directory
APP_DIR=build/applications

# create the applications directory if not exist
if [ ! -d "$APP_DIR" ]; then
    mkdir -p $APP_DIR
fi

# change dir to applications
cd $APP_DIR

# array of github repos
appArr=(
    "git@github.com:the-auction-games/account-api.git"
    "git@github.com:the-auction-games/activity-api.git"
    "git@github.com:the-auction-games/auction-api.git"
    "git@github.com:the-auction-games/session-api.git"
    "git@github.com:the-auction-games/auction-web-app.git"
)

# loop through repos and clone
for repo in "${appArr[@]}"; do

    # clone the repo
    git clone $repo

done
