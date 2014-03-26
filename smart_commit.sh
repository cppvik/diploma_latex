#!/usr/bin/env sh
rm -f *.log
git stash
git pull --ff
git stash pop
git commit -a -S
git push
