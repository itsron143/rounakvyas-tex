#!/bin/bash

generate(){
    if [ -f pdf/rounakvyas.pdf ]; then
        $(rm rounakvyas.pdf)
    fi
    $(./laton cv_7.tex)
    $(mv main.pdf pdf/rounakvyas.pdf)
}

generate