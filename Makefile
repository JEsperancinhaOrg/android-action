SHELL := /bin/bash

b: build
build:
	docker build -t test .
docker:
	docker run test
test: build docker
docker-rm:
	docker rmi test
docker-stop:
	docker ps | grep test | cut -d' ' -f1 | xargs -I {} docker stop {}
	docker ps | grep test | cut -d' ' -f1 | xargs -I {} docker rm {}
