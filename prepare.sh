#!/bin/bash
set -e
source /build/buildconfig
set -x

## Create a user for the web app.
addgroup --gid 9999 webapp
adduser --uid 9999 --gid 9999 --disabled-password --gecos "Application" webapp
usermod -L webapp
mkdir -p /home/webapp
