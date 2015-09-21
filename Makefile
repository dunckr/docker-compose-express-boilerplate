CURRENT_DIRECTORY := $(shell pwd)

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

.PHONY: clean start stop status cli restart
