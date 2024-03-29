init: docker-down docker-pull docker-build docker-up
up: docker-up
down: docker-down
restart: docker-down docker-up
clear: docker-down-clear
clean: docker-down-clean

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down -v --remove-orphans

docker-down-clear:
	docker-compose down --rmi all -v --remove-orphans

docker-pull:
	docker-compose pull

docker-build:
	docker-compose build --pull

docker-down-clean:
	docker-compose down --remove-orphans