APP_NAME=henriqueleite-genoa-backend-test

# HELP
# This will output the help for each task
.PHONY: help

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

build: ## Build the Image
	sudo docker build --tag $(APP_NAME) .

run: ## Run containers
	sudo docker-compose up -d

stop: ## Stop and remove a running container
	sudo docker-compose stop

up: ## Build Image and Run Containers
	make build; make run

