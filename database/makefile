DC_LOCAL := docker compose -f ../.compose.local.yml

# [More colors](https://www.shellhacks.com/bash-colors/)
RED_NORMAL := \e[31m
YELLOW_NORMAL := \e[33m
CYAN_NORMAL := \e[36m
NO_COLOR := \e[0m

.PHONY: connect $(MAKECMDGOALS)

## Run from host
connect:
	@clear
	@$(DC_LOCAL) exec database bash

## Run from container
reset: dropAll migrate

dropAll: bootstrap
	@printf "${YELLOW_NORMAL}%s${NO_COLOR}\n" "--------------- Drop All Schemas ---------------"
	@src/dropAll.sh

migrate: bootstrap
	@printf "${CYAN_NORMAL}%s${NO_COLOR}\n" "--------------- Migrating ---------------"
	@src/migrate.sh

bootstrap:
	@printf "${YELLOW_NORMAL}%s${NO_COLOR}\n" "--------------- Bootstrapping ---------------"
	@if ! psql -qc '\q' 2>/dev/null; \
	then \
		src/bootstrap.sh; \
	else \
		echo "Database already exists"; \
		echo "Skipping bootstrap"; \
	fi
