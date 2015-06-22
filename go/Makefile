export GOPATH := $(shell pwd):$(shell pwd)/deps
export GOBIN := $(shell pwd)/bin
export PATH := $(PATH):${GOBIN}:$(shell pwd)/deps/bin
.PHONY: deps

build: deps
	go install github.com/jj-io/jj

cmd: deps
	go install github.com/jj-io/jj/cmd/...

deps:
	@make -C deps

clean:
	@make -C deps clean
	go clean

restart:
	supervisorctl restart jj

test:
	go test ./...

gen:
	go generate ./...

deploy:
	bash -c "cd src/github.com/jj-io/jj/ && gc -a && gp"
	gc -a && gp
