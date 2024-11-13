#!/bin/bash

# reset repo for a fresh start
cd "$(dirname "$0")/.." || exit 1
cd internal
cat merge-content.html > ../conflict-resolution.html
cd ..
rm -rf .git
