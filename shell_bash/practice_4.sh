#!/bin/bash

# Exercise 1
shopt -s nullglob
function rename1(){
    for file in $@ 
        do mv $file $(date +"%F")$file
    done
}
rename1 *.jpg

# Exercise 2
DATE=$(date +"%F")
read -p 'Please enter a file extention:' EXTENTION 
read -p 'Please enter a file prefix: (default to $(DATE)) ' PREFIX

if [ -z "$PREFIX"  ]
    then PREFIX=$DATE
    echo "Use default prefix: $PREFIX"
fi
function rename2() {
    for file in $@ 
    do echo "the original file name: $file"
        echo "the new name of the file: ${PREFIX}-${file}" 
        mv $file $PREFIX-$file
    done
}

rename2 *.$EXTENTION