#!/bin/bash

generate(){
    if [ -f pdf/rounakvyas.pdf ]; then
        $(rm rounakvyas.pdf)
    fi
    $(./laton cv_7.tex > /dev/null 2>&1)
    $(ls)
    $(mv main.pdf pdf/rounakvyas.pdf)
}

generate