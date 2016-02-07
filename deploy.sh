#!/bin/sh

bundle exec jekyll build
cd _site
git add .
git ci -m 'build' --amend
git push -f
cd ..