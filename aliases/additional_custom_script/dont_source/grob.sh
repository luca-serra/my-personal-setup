#!/bin/bash -e


git fetch --all --prune
# This script will delete the local branches which are not present in remote
removed_branches=$(git branch -vv | grep ': gone]'|  grep -v "\*" | awk '{ print $1; }')
if [ -z "$removed_branches" ]; then
    echo "No branches to remove!"
    exit 0
fi
read -p "Want to remove ${removed_branches} ? (y/n)" answer
if [ "$answer" = "y" ]; then
    git branch -vv | grep ': gone]'|  grep -v "\*" | awk '{ print $1; }' | xargs -r git branch -D
else
    echo "Aborted!"
fi
