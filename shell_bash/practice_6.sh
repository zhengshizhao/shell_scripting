#!/bin/bash

# Exersice 1

NUM=$RANDOM
echo "$NUM"
logger -s -p user.info start testing No. ${NUM} process

# Exercice 2 

logging (){
    logger -i -t "randomly " -p user.info "log message for $1"
}
logging $RANDOM
logging $RANDOM
logging $RANDOM