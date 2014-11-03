#!/bin/bash

echo Cloning Project $1
git clone --quiet --single-branch --branch $2 $1 /var/workspace

if [ "$3" != "null" ]
then
    echo Setting revision $3
    git checkout -q -f $3
else
    echo Setting revision $(git rev-parse origin/master^{commit})
    git checkout -q -f $(git rev-parse origin/master^{commit})
fi

