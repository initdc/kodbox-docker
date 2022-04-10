#!/bin/sh

set -e
service php7.4-fpm start
nginx
redis-server