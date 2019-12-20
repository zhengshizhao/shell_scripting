#!/bin/bash
# Excercise 1 
echo  "This script will exit with a 0 exit status."
exit 0

# Excercise 2
FILENAME=$1 
echo "${FILENAME}"
if [ -f $FILENAME ]; then
    echo  "Will exit with a 0 exit status."
    exit 0 
elif [ -d $FILENAME ]; then
    echo  "Will exit with a 1 exit status."
    exit 1
elif [ -e $FILENAME ]; then
    echo  "Will exit with a 2 exit status."
    exit 2
else 
    echo  "Will exit with a 3 exit status."
    exit 3
fi

# Excercise 2
cat /etc/shadow 
if [ $? == 0 ]; then 
    echo "Command succeeded"
    exit 0
else 
    echo "Command failed"
    exit 1 
fi