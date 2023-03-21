#!/bin/bash

# This is the cleanup script for the auction games project.
# It will remove all the application repos.

# the applications build directory
APP_DIR=./build/applications

# remove all the repos
rm -rf $APP_DIR/*