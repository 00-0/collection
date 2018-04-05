#!/bin/sh
git checkout master
git pull
rsync -r --exclude="update.sh" ../../collection/* .
git add -A
git commit
git push
git checkout gh-pages
git pull
git merge -m "Merged latest from master" master
git push
git checkout master