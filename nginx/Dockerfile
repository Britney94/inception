#FROM 	alpine:3.16
FROM 	debian:buster

#RUN	apk update && apk add nginx
#RUN	apk update && apk add openssl

RUN	apt-get update && apt-get install -y nginx
RUN	apt-get update && apt-get install -y openssl

EXPOSE	443


RUN	mkdir -p /run/nginx
RUN	mkdir /etc/nginx/ssl
RUN 	chown -R root:root /etc/nginx/ssl
RUN 	chmod -R 600 /etc/nginx/ssl

COPY	./default.conf			/etc/nginx/conf.d/default.conf
COPY	./default.conf			/etc/nginx/sites-enabled/default.conf
COPY	./bump.key			/etc/nginx/ssl/inception.key
COPY	./bump.crt			/etc/nginx/ssl/inception.crt

#COPY	./conf/nginx.conf		/etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
