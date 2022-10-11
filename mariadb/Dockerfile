FROM 	alpine:3.16

RUN	apt-get update
RUN	apt-get install -y mariadb-server

VOLUME /etc/lib/mysql

EXPOSE	3306

LABEL	version="1.0"

#COPY 	. /pouette

CMD 	["mysqld"]
