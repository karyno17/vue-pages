#!/usr/bin/env sh

set -e

npm run build

cd dist

git init
git add -A
git comment -m 'New Deployment'
git push -f https://github.com/karyno17/vue-pages.git master:gh-pages

cd -
