#!/bin/bash
set -e


echo -n $USER: >> /etc/nginx/.htpasswd
openssl passwd -apr1 $PASSWORD >> /etc/nginx/.htpasswd


echo "$@"

exec "$@"
