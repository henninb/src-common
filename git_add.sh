#!/bin/sh

FILELIST=$(git status | grep modified: | sed 's/modified://' | sed 's/^\#'//)

git pull origin master
for FLIST in $(echo ${FILELIST}); do
  echo "${FLIST}"
  git add ${FLIST}
done

git config --global user.email "henninb@msn.com"
git config --global user.name "Brian"
git commit -m updates
echo "git clean -fd"
git clean -fX

exit 0
