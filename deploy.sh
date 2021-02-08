#!/usr/bin/env sh

if [[ $1 != "" ]]
then
    commit_rotulo=$1
else
    commit_rotulo="deploy front"
fi

# abort on errors
set -e

# build
yarn build

# navigate into the build output directory
cd dist

git init
git add -A



git commit -m "${commit_rotulo}"

git push -f git@github.com:GustavoGarciaPereira/pwa-primeira.git master:gh-pages

cd -