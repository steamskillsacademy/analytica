DC_LOCAL := docker compose -f ./.compose.local.yml

# [More colors](https://www.shellhacks.com/bash-colors/)
RED_NORMAL := \e[31m
YELLOW_NORMAL := \e[33m
CYAN_NORMAL := \e[36m
NO_COLOR := \e[0m

.PHONY: start $(MAKECMDGOALS)

## Start environment. Run from host
start:
	@printf "${CYAN_NORMAL}%s${NO_COLOR}\n" "--------------- Starting ${ENV} environment ---------------"
	@$(DC_LOCAL) up -d --build

restart:
	@$(DC_LOCAL) restart

stop:
	@$(DC_LOCAL) stop
