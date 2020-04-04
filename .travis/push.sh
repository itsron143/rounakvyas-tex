#!/bin/sh

setup_git() {
  git config --global user.email "itsron143@gmail.com"
  git config --global user.name "itsron717"
}

commit_pdf_file() {
  git clone https://itsron717:${GH_TOKEN}@github.com/itsron717.github.io.git ./itsron717.github.io
  mv ../rounakvyas-tex/pdf/rounakvyas.pdf ../itsron717.github.io/rounakvyas.pdf
  cd itsron717.github.io
  git add . *.pdf
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER. Resume Updated."
}

upload_file() {
  git push
}

setup_git
commit_pdf_file

if [ $? -eq 0 ]; then
  echo "Uploading updated resume to GitHub."
  upload_file
else
  echo "No changes in resume."
fi
