#!/bin/sh

cd _site
git add .
g cm 'update build' --amend
g push
cd ..
