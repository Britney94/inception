#FROM 	alpine:3.16
FROM 	debian:buster-slim

#RUN	apk update && apk add  mariadb \
#	mariadb-client

RUN	apt-get update && apt-get install -y  mariadb-server
RUN	apt-get update && apt-get install -y mariadb-client

RUN			rm -f	/etc/mysql/my.cnf \
				/etc/my.cnf \
				~/my.cnf

VOLUME /home/data/volume_mariadb

#COPY		./db.sql		/var/www/
COPY		default.conf		/etc/mysql/my.cnf
COPY		default.conf 		/etc/my.cnf
COPY		default.conf 		~/my.cnf

EXPOSE	3306


RUN			mkdir -p /run/mysqld
RUN			mkdir -p /var/lib/mysql
RUN			chown -R mysql /var/lib/mysql
RUN			chmod 777 /var/lib/mysql

COPY			./launch.sh	./
RUN			chmod 777	launch.sh
#RUN	service mysql start && mysql < /var/www/db.sql && rm -f /var/www/db.sql;
ENTRYPOINT		["./launch.sh"]

#CMD 	["mysqld"]
