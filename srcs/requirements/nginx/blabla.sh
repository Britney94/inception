#!/bin/bash

if [ ! -f /etc/ssl/private/inception.key ];
then
openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/ssl/private/inception.key -out /etc/ssl/certs/inception.crt -subj "/C=FR/ST=Paris/L=IDF/O=42School/CN=kejebane.42.fr";
fi
exec "$@"
