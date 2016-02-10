#!/bin/sh

rm -rf _site
mkdir _site
cp -r .git _site
cd _site

git reset --hard && git clean -df

git co master

# git reset --hard && git clean -df
# git co master
cd ..

bundle exec jekyll build
cd _site

git add .
git ci -m 'build'
git push
cd ..