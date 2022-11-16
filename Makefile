# Variables

NAME			= Inception
SRCS 			= ./srcs
DOCKER			= sudo docker
COMPOSE 		= cd srcs/ && sudo docker-compose
DATA_PATH 		= /home/kejebane/data

# Color variables

RED				= \033[0;31m
PURPLE			= \033[0;35m
NC				= \033[0m		# No Color

# Rules

all		:	build
			@sudo mkdir -p $(DATA_PATH)
			@sudo mkdir -p $(DATA_PATH)/wordpress
			@sudo mkdir -p $(DATA_PATH)/database
			@sudo chmod 777 /etc/hosts
			@sudo echo "127.0.0.1 kejebane.42.fr" >> /etc/hosts
			@sudo echo "127.0.0.1 www.kejebane.42.fr" >> /etc/hosts
			@$(COMPOSE) up -d
			@echo "${PURPLE}🌸 Build complete ${NC}"

build	:
			@$(COMPOSE) build

up:
			@${COMPOSE} up -d 

logdb:
	docker logs --tail 50 --follow --timestamps mariadb
logng:
	docker logs --tail 50 --follow --timestamps nginx
logwp:
	docker logs --tail 50 --follow --timestamps wordpress

    #Display the error message that were not displayed because containers
    #were running in background

issue:
	docker stop $(docker ps -a -q)
	docker rm $(docker ps -a -q)
	docker volume rm $(docker volume ls -qf dangling=true)
	docker network rm $(docker network ls -q) 	# ->This one can be called alone, when lazy
	sudo lsof -nP | grep LISTEN			# ->Display the port usage if problem occur
	sudo kill -9 1548				# ->Kill the process that use our problematic port
							#replacing 1548 by the PID of said process

    #Use if port 443 is occupied by another processor for example,
    #or if volume / container have issue with starting maneuver


check:
			@echo "${PURPLE}🌸 Docker services :${NC}"
			@cd $(SRCS) && sudo docker-compose ps 
			@echo ""
			@echo "${PURPLE}🌸 Docker network :${NC}"
			@cd $(SRCS) && sudo docker network ls
			@echo ""
			@echo "${PURPLE}🌸 Docker volume :${NC}"
			@cd $(SRCS) && sudo docker volume ls

down	:
			@$(COMPOSE) down

clean	:
			@$(COMPOSE) down -v --rmi all --remove-orphans

fclean	:	clean
			@$(DOCKER) system prune --volumes --all --force
			@sudo rm -rf $(DATA_PATH)
			@$(DOCKER) network prune --force
			@echo docker volume rm $(docker volume ls -q)
			@$(DOCKER) image prune --force
			@echo "${RED}⚠️ $(NAME) is delete.${NC}"

re		:	fclean all

.PHONY : all build up check down clean fclean re
