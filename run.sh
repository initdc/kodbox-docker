#!/bin/sh

set -e
service php7.2-fpm start
nginx
redis-server