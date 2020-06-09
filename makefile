REPO_DIR=../hvariant.github.io

build:
	rm -rf public
	hugo

deploy:
	cp -r public/* ${REPO_DIR}
