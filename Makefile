NAME=inception

all:
	docker-compose build
	docker-compose up -d

down:
	docker-compose down
rm:
	docker volume rm $(docker volume ls -qf dangling=true | xargs)
	docker volume rm $(docker volume ls -q)

logdb:
	docker logs --tail 50 --follow --timestamps mariadb_kejebane
logng:
	docker logs --tail 50 --follow --timestamps nginx_kejebane
logwp:
	docker logs --tail 50 --follow --timestamps wp_kejebane

issue:
	docker stop $(docker ps -a -q); docker rm $(docker ps -a -q); docker volume rm $(docker volume ls -qf dangling=true)
	docker network rm $(docker network ls -q)
	sudo lsof -nP | grep LISTEN
	sudo kill -9 1548

prune:
	docker system prune
