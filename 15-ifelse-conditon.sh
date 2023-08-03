#/bin/bash 

echo "Demo on if usage"

ACTION=$1 

if [ "$ACTION" == "start" ]; then   
    echo "Starting Payment"
    exit  0
fi 