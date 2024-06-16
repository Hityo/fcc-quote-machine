#!/usr/bin/env sh

# abort on errors
set -e

env PUBLIC_URL=https://hityo.github.io/fcc-quote-machine/ npm run build

cd build

git init
git add -A
git commit -m 'deploy'

# deploying to https://{USERNAME}.github.io (see https://pages.github.com for instructions)
# git push -f git@github.com:{USERNAME}/{USERNAME}.github.io.git main

# deploying to https://{USERNAME}.github.io/{REPO}
git push -f git@github.com:Hityo/fcc-quote-machine.git main:gh-pages