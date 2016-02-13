#!/bin/sh

rm -rf _site
# git clone git@github.com:filtercake/filtercake.github.io.git _site --branch master --depth 1
mkdir _site
cp -r .git _site
cd _site

git reset --hard && git clean -df

git co master
git pull
# git reset --hard && git clean -df
# git co master
cd ..

bundle exec jekyll build
cd _site

git add .
git ci -m 'build'
git push
cd ..



# git clone git@github.com:filtercake/filtercake.github.io.git _site --branch master --depth 1