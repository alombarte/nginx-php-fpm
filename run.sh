#!/bin/bash

sed -i "s/{{APP_HOST}}/$APP_HOST/" /etc/nginx/conf.d/default.conf
sed -i "s/{{APP_PORT}}/$APP_PORT/" /etc/nginx/conf.d/default.conf

nginx -g "daemon off;"