#!/bin/bash
set -e


echo -n $USER: >> /etc/nginx/.htpasswd
openssl passwd -apr1 $PASSWORD >> /etc/nginx/.htpasswd
sed -i "s/proxy_pass http:\/\/.*/proxy_pass http:\/\/$HOST:$PORT\/;/" /etc/nginx/conf.d/default.conf 

exec "$@"
