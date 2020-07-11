HUGO_OUTPUT_DIR=public
DEV_BRANCH_NAME=dev

# taken from https://jaspervdj.be/hakyll/tutorials/github-pages-tutorial.html
# with slight modifications
deploy:
	git stash
	git checkout $(DEV_BRANCH_NAME)
	rm -rf $(HUGO_OUTPUT_DIR)
	hugo -d $(HUGO_OUTPUT_DIR)
	git fetch --all
	git checkout -b master --track origin/master
	rm -rf themes
	rsync -a --filter='P $(HUGO_OUTPUT_DIR)/'      \
         --filter='P .git/'       \
         --filter='P .gitignore'  \
         --delete-excluded        \
         $(HUGO_OUTPUT_DIR)/ .
	git add -A
	git commit -m "automatic commit ${DATE}"
	git push origin master:master
	git checkout $(DEV_BRANCH_NAME)
	git branch -D master
	git stash pop
