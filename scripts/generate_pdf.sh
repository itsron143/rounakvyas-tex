#!/bin/bash

generate(){
    if [ -f pdf/rounakvyas.pdf ]; then
        $(rm pdf/rounakvyas.pdf)
        echo "Removing previous resume."
    fi
    $(./laton cv_7.tex > /dev/null 2>&1)
    $(sleep 5)
    $(mv cv_7.pdf pdf/rounakvyas.pdf)
}

generate