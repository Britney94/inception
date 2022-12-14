#!/bin/bash

target="/etc/php7/php-fpm.d/www.conf"

grep -E "listen = 127.0.0.1" $target > /dev/null 2>&1
if [ $? -eq 0 ]; then
	sed -i "s|.*listen = 127.0.0.1.*|listen = 9000|g" $target
	echo "env[MARIADB_HOST] = \$MARIADB_HOST" >> $target
	echo "env[MARIADB_USER] = \$MARIADB_USER" >> $target
	echo "env[MARIADB_PWD] = \$MARIADB_PWD" >> $target
	echo "env[MARIADB_DB] = \$MARIADB_DB" >> $target
fi

if [ ! -f "wp-config.php" ]; then
	cp /config/wp-config ./wp-config.php

sleep 10

	wp core install --url="$WP_URL" --title="$WP_TITLE" --admin_user="$WP_ADMIN_USER" \
    	--admin_password="$WP_ADMIN_PWD" --admin_email="$WP_ADMIN_EMAIL" --skip-email

	wp plugin update --all

	wp theme install blocksy --activate

	wp user create $WP_USER $WP_USER_EMAIL --role=editor --user_pass=$WP_USER_PWD
fi

php-fpm7 --nodaemonize
# wp config create	--allow-root \
# 			--dbname=inception \
# 			--dbuser=kejebane \
# 			--dbpass=kejebane_pass \
# 			--dbhost=MYSQL:3306 --path='/var/www/wordpress'

# mkdir -p /run/php/;
# touch /run/php/php7.3-fpm.pid;

# if [ ! -f /var/www/site/scriptDone ];
# then
# 	chown -R www-data:www-data /var/www/*
# 	chown -R 755 /var/www/*

# 	cd /var/www/site
# 	wp core install --url=${DOMAIN_NAME} --title=wpData --admin_user=${WP_ADMIN_USERNAME} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL} --skip-email --allow-root
# 	wp user create ${WP_USER} ${WP_USER_EMAIL} --role="editor" --user_pass=${WP_USER_PASSWORD} --allow-root
	
# 	touch /var/www/site/scriptDone
# fi

# exec "$@"
