#!/bin/bash

mkdir -p /run/php/;
touch /run/php/php7.3-fpm.pid;

if [ ! -f /var/www/site/scriptDone ];
then
	chown -R www-data:www-data /var/www/*
	chown -R 755 /var/www/*

	cd /var/www/site
	wp core install --url=${WORDPRESS_HOST} --title=wpData --admin_user=${WORDPRESS_ADMIN_USER} --admin_password=${WORDPRESS_ADMIN_PASSWORD} --admin_email=${WORDPRESS_ADMIN_EMAIL} --skip-email --allow-root
	wp user create ${WORDPRESS_USER} ${WORDPRESS_EMAIL} --role="editor" --user_pass=${WORDPRESS_PASSWORD} --allow-root
	
	touch /var/www/site/scriptDone
fi

exec "$@"
