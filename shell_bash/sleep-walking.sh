#!/bin/bash
# This is a startup script for an application called sleep-­walking­-server
# This script accept "start" and "stop" as arguments
read -p "do you want to start|stop sleep-­walking­-server": ACTION
case $ACTION in
    start|START) 
        ./sleep­walking­server &
        ;;
    stop|STOP)
        kill $(cat /tmp/sleepwalkingserver.pid)
        ;;
    *)
        echo "Usage sleep­walking start|stop"
        exit 1
        ;;
esac



