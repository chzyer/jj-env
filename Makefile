.PHONY: android go
all: go android

go:
	@make -C go

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
