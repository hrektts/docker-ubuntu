all: build

build:
	@docker build -t hrektts/ubuntu:latest .

release: build
	@docker build -t hrektts/ubuntu:$(shell cat Dockerfile | \
		grep version | \
		sed -e 's/[^"]*"\([^"]*\)".*/\1/') .
