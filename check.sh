#!/usr/bin/env sh

# https://stackoverflow.com/a/5737794
if [ -n "$(git status --porcelain)" ]; then
  echo there are untracked or uncommitted files
  exit 1
else
  exit 0
fi
