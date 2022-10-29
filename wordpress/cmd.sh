#!/bin/sh

sleep 5

curl				-O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod				+x wp-cli.phar
mv					-f wp-cli.phar /usr/local/bin/wp

/usr/local/bin/wp	--info
/usr/local/bin/wp	core download --allow-root --path="/var/www/html"

#rm					-f /var/www/html/wp-config.php
#cp					./wp-config.php /var/www/html/wp-config.php

echo					"P0"

/usr/local/bin/wp	config create	--allow-root ${WP_USER_LOGIN} ${WP_USER_EMAIL} \
					--dbpass='user_pass'

/bin/ls					/var/www/html/wp-config*
#cp					./wp-config.php /var/www/html/wp-config.php
#/bin/ls					/var/www/html/wp-config*

echo					"P1"

#/bin/cat				/var/www/html/wp-config-sample.php
#/bin/cat				/var/www/html/wp-config.php
#mv					/var/www/html/wp-config-sample.php /var/www/html/wp-config.php

echo					"P2"
/usr/local/bin/wp	core install \
					--allow-root \
					--path="/var/www/html" \
					--url=${WORDPRESS_HOST} \
					--title=${WORDPRESS_TITLE} \
					--admin_user=${WORDPRESS_ADMIN_USER} \
					--admin_password=${WORDPRESS_ADMIN_PASSWORD} \
					--admin_email=${WORDPRESS_ADMIN_EMAIL} \
					--skip-email

echo					"P3"
/usr/local/bin/wp	user create \
					--allow-root \
					--path="/var/www/html" \
					${WORDPRESS_USER} \
					${WORDPRESS_EMAIL} \
					--role=author \
					--user_pass=${WORDPRESS_PASSWORD}
echo					"P4"

exec	php-fpm7 -F
