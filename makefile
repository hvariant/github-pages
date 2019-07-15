REPO_DIR=../hvariant.github.io
CUR_DIR=$(shell pwd)
DATE=$(shell date --iso=seconds)

build:
	rm -rf public
	hugo
