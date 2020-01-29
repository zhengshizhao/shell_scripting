#!/bin/bash

# Practice 1 & 2 
read -p 'How many lines of /etc/passwd would you like to see? ' EXPECTED_NUM
LINE_NUM=1
ls -al /etc/passwd | while read FILE;
do
    if [ $LINE_NUM -le $EXPECTED_NUM ]; then 
        echo "$LINE_NUM: $FILE";
        ((LINE_NUM++));
    else
        break;          
    fi
done

# Practice 3 
while true;
do 
read -p "1. Show disk usage. 
2. Show system uptime. 
3. Show the users logged into the system. 
What would you like to do? (Enter q to quit.) " ACTION
    case $ACTION in
        "q") echo "Goodbye!"; break;;
        "1") df;;
        "2") uptime;;
        "3") who;;
        *) echo "Invalid option.";;
    esac
    echo
done


