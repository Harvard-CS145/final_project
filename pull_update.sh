#! /bin/bash

res=$(git remote -v | grep upstream)

if [ -z "$res" ]
then
    # Depends on whether you want to use https or ssh link to clone
    git remote add upstream "https://github.com/Harvard-CS145/final_project.git"
    # git remote add upstream "git@github.com:Harvard-CS145/final_project.git"
fi

git pull upstream master --allow-unrelated-histories
