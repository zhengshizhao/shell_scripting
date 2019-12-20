#!/bin/bash

# Exercise 1 
echo "Hello World"

# Exercise 2
# Note: no space around =
NAME="Lucia"
echo "Greeting from ${NAME} - Hello World!"
echo "Greeting from $NAME - Hello World!"

# Exercise 3
HOSTNAME1=$(hostname)
echo "This script is running on $HOSTNAME1"

HOSTNAME2=`hostname`
echo "This script is running on $HOSTNAME2"

# Exercise 4
FILE="/etc/shadow"
if [ -e ${FILE} ]; then 
    echo "Shadow passwords are enabled.";
elif [ -w  ${FILE} ]; then 
    echo "You have permissions to edit ${FILE}.";
else 
    echo "You Do NOT have permissions to edit ${FILE}";
fi

# Exercise 5 
for animal in "man" "bear" "pig"  "dog" "cat" "sheep"
do 
    echo "$animal"
done

# Exercise 6

echo "Input a name of a file or directory:"
read FILE
if [ -f $FILE ]; then 
    echo "$FILE is a file"
    ls -all $FILE 
elif [ -d $FILE ]; then
     echo "$FILE is a directory"
     ls -all $FILE 
else
    echo "$FILE is not a file or direcory"
fi

# Exercise 7
echo "Input a name of a file or directory:"
if [ -f $1 ]; then 
    echo "$1 is a file"
    ls -all $1
elif [ -d $1 ]; then
     echo "$1 is a directory"
    ls -all $1
else
    echo "$1 is not a file or direcory"
fi

# Exercise 8
echo "Input name(s) of a file or directory:"
for file in $@
do
    if [ -f $file ]; then 
        echo "$file is a file"
        ls -all $file
    elif [ -d $file ]; then
        echo "$file is a directory"
        ls -all $file
    else
        echo "$file is not a file or direcory"
    fi
done
