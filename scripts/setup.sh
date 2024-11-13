#!/bin/bash


# setup repo
cd "$(dirname "$0")/.." || exit 1
rm -rf .git
git init
git add .
git commit -m "init commit"
git checkout -b development
echo "Development branch content" > file.txt
git add .
git commit -m "Commit to development branch"
git checkout -b bots-feature
cd internal
cat bots-changes.html > ../conflict-resolution.html
cd ..
git add .
git commit -m "Add bots feature branch content"
git checkout development
git merge bots-feature -m "Merge bots-feature into development"
git checkout main
git checkout -b my-feature
