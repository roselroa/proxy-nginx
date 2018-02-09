#!/bin/sh
/usr/bin/envsubst < /etc/nginx/default.conf.template > /etc/nginx/conf.d/default.conf
cat /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'
