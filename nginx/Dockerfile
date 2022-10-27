#FROM 	alpine:3.16
FROM 	debian:buster-slim

#RUN	apk update && apk add nginx
#RUN	apk update && apk add openssl

RUN	apt-get update && apt-get install -y nginx
RUN	apt-get update && apt-get install -y openssl
EXPOSE	443


RUN	mkdir -p /run/nginx
COPY	./conf/default.conf /etc/nginx/conf.d/default.conf
#COPY	./conf/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
