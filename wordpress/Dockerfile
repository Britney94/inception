FROM	debian:buster

RUN	apt-get update && apt-get -y install php7.3 wget php-mysqli php-fpm curl

RUN	mkdir -p /var/www/site && mkdir -p /home/srcs

RUN	wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
RUN	cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz

RUN	chown -R root:root	/var/www/wordpress/
COPY	./alt.sh		/home/srcs/alt.sh/
#COPY	./tools/wp-config.php 	/var/www/wp-config.php
#COPY	./wp-config.php 	/var/www/wp-config.php
#COPY	./wp-config.php 	/var/www/site/wp-config.php

COPY	./* /home/srcs/

RUN	cd /var/www/site ; \
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar ; \
	chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp ; \
	chown -R root:root /home/srcs/alt.sh ; \
	chmod 777 /home/srcs/alt.sh ; \
	wp core download --allow-root ; 

COPY	./www.conf /etc/php/7.3/fpm/pool.d

EXPOSE	9000

ENTRYPOINT	[ "/home/srcs/alt.sh" ]

CMD	["/usr/sbin/php-fpm7.3", "-F"]
