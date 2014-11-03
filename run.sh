#!/bin/bash

git clone --progress --single-branch --branch $2 $1 /var/workspace
#git checkout -f $3

if [ "$3" != "null" ]
then
    git checkout -f $3
else
    git checkout -f $(git rev-parse origin/master^{commit})
fi

