#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

npm run docs:build

cd docs/.vuepress/dist

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:erasermeng/nest-doc.git master:gh-pages

cd -