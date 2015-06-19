export GOPATH := $(shell pwd)
export GOBIN := $(shell pwd)/bin
export pkg := $(shell cat pkg.list)
export pkgsrc := $(shell cat pkg.list | xargs -I{} echo src/{})

all: $(pkgsrc)
	@go install $(pkg)

clean:
	rm -fr pkg/ src/ bin/

src/%:
	go get -u -v $(shell bash -c "echo "$@"|sed 's/src\///'")
