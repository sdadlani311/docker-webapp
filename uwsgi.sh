#!/bin/bash
set -e
source /build/buildconfig
set -x

## Install uwsgi
easy_install pip
pip install uwsgi

## Supervisor to manage uwsgi process
cp /build/supervisor/conf.d/uwsgi.conf /etc/supervisor/conf.d/uwsgi.conf
 
