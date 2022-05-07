build:
	docker build -t test .
docker:
	docker run test
test: build docker
