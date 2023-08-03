#!/bin/bash


# Conditons helps us to execute something only if SOME-Factor is true and if that factor is false then that something won't be executed.


# Syntax Of CASE 
# case $var in 
#     opt1)  commands-x ;; 
#     opt2)  commands-y ;;
# esac  

ACTION=$1

case $ACTION in 
    start)
        echo "Starting Payment Service"
        ;;
    stop)
        echo "Stopping Payment Service"
        ;;
    restart)
        echo "Restarting Payment Service"
        ;;
    *)
        echo "Valid Options are start or stop or restart"
        echo "Example Usage :\n \t bash scriptName stop"
        ;;
esac 