REPO_DIR=../hvariant.github.io
CUR_DIR=$(shell pwd)
DATE=$(shell date --iso=seconds)

build:
	hugo

publish: build
	cd ${REPO_DIR} && git pull && cd ${CUR_DIR} \
	rm -rf ${REPO_DIR}/* && cp -r public/* ${REPO_DIR} && \
	cd ${REPO_DIR} && git add . && git commit -am "Automatic commit of successful build ${DATE}" && \
	git push -u origin master
