# jekyll: bundle exec jekyll serve --watch --baseurl '' --drafts --incremental
jekyll: bundle exec jekyll build --config _jekyllrc.yml --trace --watch --drafts --incremental --verbose

sass: bundle exec sass --style compressed --watch _includes/inline-styles.scss:_includes/inline-styles.css
# compass:      bundle exec compass watch

browsersync: ./node_modules/.bin/browser-sync start --config _browser-sync-rc.js
# LINK CSS FOR LOCAL DEV INJECTION!
