#!/bin/bash
set -e
source /build/buildconfig
set -x

## Install nginx
apt-get install -y nginx-extras
cp -f /build/config/nginx-default.conf /etc/nginx/nginx.conf
cp /build/config/nginx-webapp.conf /etc/nginx/sites-available/webapp.conf
ln -s /etc/nginx/sites-available/webapp.conf /etc/nginx/sites-enabled/webapp.conf

## Have supervisor manage nginx
cp /build/supervisor/conf.d/nginx.conf /etc/supervisor/conf.d/nginx.conf
