FROM 	alpine:3.16

RUN	apk update && apk add  mariadb \
	mariadb-client

VOLUME /home/data/volume_mariadb

EXPOSE	3306

CMD 	["mysqld"]
