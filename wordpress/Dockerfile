#FROM 	alpine:3.16
FROM 	debian:buster-slim

#RUN	apk update && apk add curl
#RUN	apk update && apk add wget
#RUN	apk update && apk add php-fpm
#RUN	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN	apt-get update && apt-get install -y curl
RUN	apt-get update && apt-get install -y sendmail
RUN	apt-get update && apt-get install -y wget
RUN	apt-get update && apt-get install -y php-fpm
RUN	apt-get update && apt-get install -y php-mysqli
RUN	apt-get update && apt-get install -y php7.3
RUN	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

EXPOSE	9000	


RUN	mkdir 		-p /var/www/html
RUN	chown 		-R $USER:$USER /var/www/
RUN	chown 		-R $USER:$USER /var/www/html

#RUN	adduser 	-u 82 -D -S -G www-data www-data
#RUN	chmod 777 	-R /var/www/html
#RUN	chown 		-R www-data:www-data /var/www/html

COPY		./wp-config.conf /etc/php/7.3/fpm/pool.d
COPY		./tools /var/www/
#COPY	./wp-config.php 	./
#COPY	./cmd.sh		./
COPY	./alt.sh		./
#RUN	chmod +x cmd.sh
RUN	chmod 777 alt.sh

ENTRYPOINT	["./alt.sh"]
#ENTRYPOINT	["./cmd.sh"]

CMD		["/usr/sbin/php-fpm7.3", "--nodaemonize"]
