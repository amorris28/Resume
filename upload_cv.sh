#!/bin/bash
# A script that pushes my csv and updates my files
CWD=$(pwd)

cd ~/Projects/Resume

quarto render resume.qmd --to pdf

cp resume.pdf ~/Projects/website/static/uploads/Morris_Resume.pdf

cd ~/Projects/website

git pull

git add .

git commit -m 'update resume '$(date +%d.%m.%y-%H:%M:%S)

git push

cd ~/Projects/Resume

git pull

git add .

git commit -m 'update resume '$(date +%d.%m.%y-%H:%M:%S)

git push

cd $CWD
