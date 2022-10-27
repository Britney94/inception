#FROM 	alpine:3.16
FROM 	debian:buster-slim

#RUN	apk update && apk add  mariadb \
#	mariadb-client
RUN	apt-get update && apt-get install -y  mariadb-server
RUN	apt-get update && apt-get install -y mariadb-client

VOLUME /home/data/volume_mariadb

EXPOSE	3306

RUN	service mysql start

CMD 	["mysqld"]
