#!/bin/bash
# 깃 프로젝트 폴더에서 실행할 것
# 선행조건: git 설치, sh 실행 가능 환경
# 파라미터: 깃 주소 (ex: $initGit.sh <git repos url>)

echo "Git Initialization" >> README.md
sleep 1
git init &&
git add README.md &&
git commit -m "first commit" &&
git remote add origin $1 &&
git push origin master
