FROM	alpine:3.14

RUN		apk update
RUN		apk add --no-cache --quiet --update curl bash vim
RUN		apk add --no-cache --quiet --update mariadb-client
RUN		apk add --no-cache --quiet --update php7 php-phar \
			php-json php-curl php-fpm php-mysqli php-iconv
RUN		mkdir -p /var/www/wordpress 
RUN		curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
			--output /usr/bin/wp 
RUN		chmod +x ./usr/bin/wp 
RUN		wp core download --path=/var/www/wordpress

WORKDIR /var/www/wordpress


COPY	./wp-config.php /config/wp-config
COPY	./alt.sh	/tmp/alt.sh

EXPOSE	9000

ENTRYPOINT	[ "sh", "/tmp/alt.sh" ]
#ENTRYPOINT	[ "/home/srcs/alt.sh" ]

CMD	["/usr/sbin/php-fpm7.3", "-F"]


#FROM	debian:buster

#RUN	apt-get update && apt-get -y install php7.3 wget php-mysqli php-fpm curl \
		#mariadb-client php-phar php-mysqli php-iconv php-json php-curl

#RUN	mkdir -p /var/www/site && mkdir -p /home/srcs
#RUN		mkdir -p /var/www/wordpress

#RUN	wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
#RUN	cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz

#RUN	chown -R root:root	/var/www/wordpress/
#COPY	./alt.sh		/home/srcs/alt.sh/
##########
#COPY	./tools/wp-config.php 	/var/www/wp-config.php

#COPY	./wp-config.php 	/var/www/site/wp-config.php

#COPY	./* /home/srcs/

#RUN	cd /var/www/site
#RUN	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar\
#		--output /usr/bin/wp
#RUN	chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
#RUN	chown -R root:root /home/srcs/alt.sh
#RUN	chmod 777 /home/srcs/alt.sh
#RUN	wp core download --path=/var/www/wordpress