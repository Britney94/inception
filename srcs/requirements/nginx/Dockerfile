FROM	alpine:3.14

RUN		apk update

RUN		apk add --no-cache --quiet --update nginx
RUN		apk add --no-cache --quiet --update openssl

RUN		mkdir -p /etc/nginx/ssl

RUN 	openssl req -x509 -nodes \
	-out /etc/nginx/ssl/kejebane.42.fr.crt \	
	-keyout /etc/nginx/ssl/kejebane.42.fr.key \
	-subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=kejebane.42.fr/UID=kejebane"

RUN 	mkdir -p /var/run/nginx

COPY	./default.conf /etc/nginx/http.d/default.conf

EXPOSE	443

CMD	[ "nginx", "-g", "daemon off;" ]

# #FROM 	alpine:3.16
# FROM 	debian:buster

# #RUN	apk update && apk add nginx
# #RUN	apk update && apk add openssl

# RUN	apt-get update && apt-get install -y nginx
# RUN	apt-get update && apt-get install -y openssl

# RUN		mkdir -p /etc/nginx/ssl

# RUN 	openssl req -x509 -nodes \
# 	-out /etc/nginx/ssl/kejebane.42.fr.crt \	
# 	-keyout /etc/nginx/ssl/kejebane.42.fr.key \
# 	-subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=kejebane.42.fr/UID=kejebane"


# EXPOSE	443

# COPY	./blabla.sh			/home
# COPY	./default.conf			/etc/nginx/http.d/default.conf
# COPY	./kejebane.42.fr.crt			/etc/nginx/ssl/kejebane.42.fr.crt
# COPY	./kejebane.42.fr.key			/etc/nginx/ssl/kejebane.42.fr.key

# RUN	chmod 777			/home/blabla.sh

# #ENTRYPOINT	["/home/blabla.sh"]

# CMD ["nginx", "-g", "daemon off;"]
