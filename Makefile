IMAGE=mcandre/docker-apache

LOCALHOST=$$(boot2docker ip)

ifneq ($(OS),Windows_NT)
	UNAME=$(shell uname -s)

	ifeq ($(UNAME),Linux)
		LOCALHOST=localhost
	endif
endif

all: run

build: Dockerfile
	docker build -t $(IMAGE) .

run: clean-containers build
	docker run -d -p 80:80 $(IMAGE)
	curl http://$(LOCALHOST)

clean-containers:
	-docker ps -a | grep -v IMAGE | awk '{ print $$1 }' | xargs docker rm -f

clean-images:
	-docker images | grep -v IMAGE | grep $(IMAGE) | awk '{ print $$3 }' | xargs docker rmi -f

clean: clean-containers clean-images

publish:
	docker push $(IMAGE)
