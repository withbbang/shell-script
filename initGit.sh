#!/bin/bash

echo "Git Initialization" >> README.md
sleep 1
git init &&
sleep 1
git add README.md &&
sleep 1
git commit -m "first commit" &&
sleep 1
git remote add origin $1 &&
sleep 1
git push origin master
