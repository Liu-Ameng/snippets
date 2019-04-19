#!/bin/bash
# Better to run this in default branch, because we only compare lastest 2 commits

# Some explain:
# `git diff --name-only HEAD^..HEAD ` list paths of changed files, e.g. `folder/sub-folder/file.txt`
# `| grep '\/' ` is used to ignore changes in root folder
# `| sed 's/\/.*$//' | sed 's/^"//' ` cut out the first level folder name
# `| uniq ` make it uniq
# `| while read folder; do ` for-each `folder`

git diff --name-only HEAD^..HEAD | grep '\/' | sed 's/\/.*$//' | sed 's/^"//' | uniq | while read folder; do
    echo "Find changes in folder '$folder'. Let us do whatever you want"
    # add script here
done
