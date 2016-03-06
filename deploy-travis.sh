#! /bin/sh
# expects GH_REF github.com/username/repo
# expects GH_TOKEN
# expects BUILD_DIR

cd ${BUILD_DIR}
git init

git config user.name "Travis CI"
git config user.email "<your@email.com>"
git add .
git commit -m "Deploy to GitHub Pages"
git push --force "https://${GH_TOKEN}@${GH_REF}" src:master
