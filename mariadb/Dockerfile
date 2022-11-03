FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server

EXPOSE 3306

RUN mkdir -p /home/srcs

COPY ./* /home/srcs/

COPY ./default.conf /etc/mysql/mariadb.conf.d/

RUN service mysql start && mysql < /home/srcs/launch.sql ;

CMD ["mysqld"]
