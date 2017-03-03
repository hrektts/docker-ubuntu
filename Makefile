all: build

build:
	@docker build --tag=hrektts/ubuntu:latest .

release: build
	@docker build --tag=hrektts/ubuntu:$(shell cat Dockerfile | \
		grep version | \
		sed -e 's/[^"]*"\([^"]*\)".*/\1/') .
