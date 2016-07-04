
browsersync: ./node_modules/.bin/browser-sync start --config _browser-sync-rc.js


# postcss watch with nodemon
postcss: ./node_modules/.bin/nodemon --ignore _site/ --watch ./ -e ".scss" -x "./node_modules/.bin/postcss --config _postcssrc.json && cp filtercake3.css _site/filtercake3.css"

# copy css to site

css-to-_site: ./node_modules/.bin/nodemon --ignore _site/ --watch ./ -e ".css" -x "cp filtercake3.css _site/filtercake3.css"

jekyll: ./node_modules/.bin/nodemon --ignore _site/ --watch ./ -e ".html|.md" -x "jekyll build --config _jekyllrc.yml --incremental"