#!/bin/sh

setup_git() {
  git config --global user.email "itsron143@gmail.com"
  git config --global user.name "itsron717"
}

commit_pdf_file() {
  git add .
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_file() {
  git remote add origin https://${GH_TOKEN}@github.com/itsron717/rounakvyas-tex.git > /dev/null 2>&1
  git push origin master --quiet 
}

setup_git
commit_pdf_file
upload_file