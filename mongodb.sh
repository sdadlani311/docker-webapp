#!/bin/bash
set -e
source /build/buildconfig
set -x

## Install Node.js (also needed for Rails asset compilation)
apt-get install mongodb-10gen
mkdir -p /data/db
cp /build/supervisor/conf.d/mongod.conf /etc/supervisor/conf.d/mongod.conf
