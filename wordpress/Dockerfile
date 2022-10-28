#FROM 	alpine:3.16
FROM 	debian:buster-slim

#RUN	apk update && apk add curl
#RUN	apk update && apk add wget
#RUN	apk update && apk add php-fpm
#RUN	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN	apt-get update && apt-get install -y curl
RUN	apt-get update && apt-get install -y wget
RUN	apt-get update && apt-get install -y php-fpm
RUN	apt-get update && apt-get install -y php-mysqli
RUN	apt-get update && apt-get install -y php7.0
RUN	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

EXPOSE	9000	

COPY	wp-config.conf /etc/php7/php-fpm.d/www.conf

RUN	mkdir 		-p /var/www/html
RUN	chown 		-R $USER:$USER /var/www/
RUN	chown 		-R $USER:$USER /var/www/html

#RUN	adduser 	-u 82 -D -S -G www-data www-data
#RUN	chmod 777 	-R /var/www/html
#RUN	chown 		-R www-data:www-data /var/www/html

COPY	./wp-config.php 	./
COPY	./cmd.sh		./
RUN	chmod +x cmd.sh

ENTRYPOINT	["./cmd.sh"]
