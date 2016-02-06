#!/bin/sh

bundle exec jekyll build
cd _site
git add .
git cm 'update build' --amend
git push
cd ..
