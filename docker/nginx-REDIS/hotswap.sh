#!/bin/bash
PARAM="$1"

sed -i "11s|.*|    server $PARAM:6379;|g" /etc/nginx/nginx.conf
sed -i "15s|.*|	   listen 8888 so_keepalive=on;|g" /etc/nginx/nginx.conf

usr/sbin/nginx -s reload
