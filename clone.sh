#!/bin/bash

echo Cloning Project $1
git clone --quiet --single-branch --branch $2 $1 /var/workspace
