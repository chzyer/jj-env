export GOPATH := $(shell pwd):$(shell pwd)/deps
export GOBIN := $(shell pwd)/bin
export PATH := $(PATH):${GOBIN}:$(shell pwd)/deps/bin
.PHONY: deps src/github.com/jj-io/jj

build: deps src/github.com/jj-io/jj
	go install github.com/jj-io/jj

deps:
	@make -C deps

clean:
	@make -C deps clean
	go clean

restart:
	supervisorctl restart go

test:
	go test ./...

gen:
	go generate ./...

src/github.com/jj-io/jj:
	@git submodule init src/github.com/jj-io/jj
	@git submodule sync src/github.com/jj-io/jj
	@git submodule update src/github.com/jj-io/jj
