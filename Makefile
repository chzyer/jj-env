.PHONY: android go go/src/github.com/jj-io/jj
all: go android

go: go/src/github.com/jj-io/jj
	@make -C go

go/src/github.com/jj-io/jj:
	@git submodule init go/src/github.com/jj-io/jj
	@git submodule sync go/src/github.com/jj-io/jj
	@git submodule update go/src/github.com/jj-io/jj

android:
	@git submodule init android
	@git submodule sync android
	@git submodule update android

clean:
	@make -C go clean

update: pull all
	@make -C go restart

pull:
	git pull
