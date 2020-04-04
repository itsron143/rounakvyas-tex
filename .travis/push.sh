#!/bin/sh

setup_git() {
  git config --global user.email "itsron143@gmail.com"
  git config --global user.name "itsron717"
}

commit_pdf_file() {
  git checkout master
  git add .
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_file() {
  git remote rm origin
  git remote add origin https://itsron717:${GH_TOKEN}@github.com/itsron717/rounakvyas-tex.git > /dev/null 2>&1
  git push origin master --quiet > /dev/null 2>&1
}

setup_git
commit_pdf_file

if [ $? -eq 0 ]; then
  echo "Uploading updated resume to GitHub"
  upload_file
else
  echo "No changes in resume."
fi
