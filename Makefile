NAME=inception

all:
	docker-compose up -d

stop:
	docker-compose down
rm:
	docker volume rm $(docker volume ls -q)