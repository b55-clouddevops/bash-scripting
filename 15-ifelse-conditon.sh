#/bin/bash 

echo "Demo on if usage"

ACTION=$1 

if [ "$ACTION" == " start" ]; then   
    echo "Starting Payment"
    exit  0
else 
    echo "Valid Option is Start Only"
    exit 1
fi 