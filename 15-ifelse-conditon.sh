#/bin/bash 

echo "Demo on if usage

ACTION=$1 

if [ "$ACTION" == "start" ]; then   
    echo -e "\e[32m Starting Payment Service \e[0m"
    exit   

fi 