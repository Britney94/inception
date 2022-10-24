FROM 	alpine:3.16

RUN	apk update && apk add nginx
RUN	apk update && apk add openssl

EXPOSE	443

RUN	mkdir -p /run/nginx
COPY	./conf/nginx.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
