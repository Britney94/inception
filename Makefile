NAME=inception

all:
	docker-compose build
	docker-compose -f docker-compose.yml up
	#docker-compose up -d

	#Build containers and run them in foreground

down:
	docker-compose down

	#Stop all containers and remove their volumes
rm:
	docker volume rm $(docker volume ls -qf dangling=true | xargs)
	docker volume rm $(docker volume ls -q)

	#Remove all volumes of containers

logdb:
	docker logs --tail 50 --follow --timestamps mariadb
logng:
	docker logs --tail 50 --follow --timestamps nginx
logwp:
	docker logs --tail 50 --follow --timestamps wordpress

	#Display the error message that were not displayed because containers
	#were running in background

issue:
	docker stop $(docker ps -a -q); docker rm $(docker ps -a -q); docker volume rm $(docker volume ls -qf dangling=true)
	docker network rm $(docker network ls -q)
	sudo lsof -nP | grep LISTEN
	sudo kill -9 1548
	
	#Use if port 443 is occupied by another processor

prune:
	docker system prune

	#Remove all dangling image, volume and network
