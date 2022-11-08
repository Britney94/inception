#FROM 	alpine:3.16
FROM 	debian:buster

#RUN	apk update && apk add nginx
#RUN	apk update && apk add openssl

RUN	apt-get update && apt-get install -y nginx
RUN	apt-get update && apt-get install -y openssl

EXPOSE	443

COPY	./blabla.sh			/home
COPY	./default.conf			/etc/nginx/sites-enabled/default
COPY	./bump.crt			/etc/nginx/ssl/inception.crt
COPY	./bump.key			/etc/nginx/ssl/inception.key

RUN	chmod 777			/home/blabla.sh

ENTRYPOINT	["/home/blabla.sh"]

CMD ["nginx", "-g", "daemon off;"]
