#!/bin/bash

# git config pull.ff only
git config --global init.defaultBranch main
git pull --rebase

# 以后用post文件夹来存储附件
# ./delete_all_post_folders.sh

git status > /tmp/git-tmp-commit-comment

git add -A .
# 读取之前存储的记录
git commit -F /tmp/git-tmp-commit-comment
# git commit -m "change blog"
git push
# git push origin HEAD
# git push -u origin branchName
# git gc --aggressive