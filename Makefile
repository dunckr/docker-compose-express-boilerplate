CURRENT_DIRECTORY := $(shell pwd)

build:
	@docker-compose build

start:
	@docker-compose up -d

stop:
	@docker-compose rm -f
	@docker-compose stop

status:
	@docker-compose ps
	@docker-compose logs

cli:
	@docker-compose run --rm web bash

restart:
	@docker-compose stop
	@docker-compose rm -f
	@docker-compose up -d

.PHONY: start stop status cli restart
