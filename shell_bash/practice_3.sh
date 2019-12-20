#!/bin/bash
# Exercise 1 
function file_count1() {
    echo "Current directory has $(ls -l $PWD | wc -l) files"
    return 0
}
file_count1

# Exercise 2
function file_count2() {
    for FILE in $@ 
    do echo "$FILE:"
        echo "$(ls -l $FILE| wc -l)"
    done
    return 0
}
file_count2 /etc /var /usr/bin