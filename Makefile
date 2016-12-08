all: up

up:
	@docker-compose build
	@docker-compose up

halt:
	@docker-compose stop
	@docker-compose rm -f

status:
	@docker-compose ps
	@docker-compose logs -f

ssh:
	@docker-compose run --rm web bash

destroy:
	@docker ps -q -a | xargs docker stop
	@docker ps -q -a | xargs docker rm

.PHONY: up halt status ssh destroy create
