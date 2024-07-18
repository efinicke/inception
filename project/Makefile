NAME = inception

all:
	@printf "Execution de la configuration ${NAME}...\n"
	@sh srcs/requirements/tools/make_dir.sh
	@docker compose -f ./srcs/docker-compose.yml up -d --build

down:
	@printf "Arrêt de la configuration ${NAME}...\n"
	@docker compose -f ./srcs/docker-compose.yml down

stop:
	@printf "Arret de la configuration ${NAME}...\n"
	@docker compose -f ./srcs/docker-compose.yml stop

clean: down
	@printf "Nettoyage de la configuration ${NAME}...\n"
	@docker stop $$(docker ps -qa) | true
	@docker rm $$(docker ps -qa) | true

fclean: clean
	@printf "Arrêt des configurations en cours\n"
	@printf "Nettoyage complet des conteneurs, réseaux, volumes\n"
	@docker system prune --all --force
	@docker rmi -f $$(docker images -qa) | true
	@docker volume rm $$(docker volume ls -q) | true
	@docker network rm $$(docker network ls -q) | true
	@docker volume rm srcs_wp-volume | true
	@docker volume rm srcs_db-volume | true
	@sudo rm -rf /home/efinicke/data/ | true

re: stop all

restart: clean all

reset: fclean all

.PHONY: all down clean fclean re reset restart
