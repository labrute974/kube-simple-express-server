.PHONY: build package deploy-%

export APP_NAME := simple-express-server
export COMMIT := $(shell git rev-parse --short HEAD)
export DOCKER_IMAGE = labrute974/$(APP_NAME)
export PROJECT := lab

build:
	@docker-compose run --rm jsbuilder ./scripts/build.sh

package:
	@./scripts/build_image.sh
	@./scripts/push_image.sh
