SHELL := /bin/bash

b: build
build:
	docker build -t test .
docker:
	docker run test
test: build docker
docker-rm:
	docker rmi test