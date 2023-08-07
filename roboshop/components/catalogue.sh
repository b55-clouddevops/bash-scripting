#!/bin/bash 

# Validate the user who is running the script is a root user or not.

USER_ID=$(id -u)
COMPONENT=catalogue
LOGFILE="/tmp/${COMPONENT}.log"
APPUSER="roboshop"

if [ $USER_ID -ne 0 ] ; then    
    echo -e "\e[31m Script is expected to executed by the root user or with a sudo privilege \e[0m \n \t Example: \n\t\t sudo bash wrapper.sh frontend"
    exit 1
fi 

stat() {
    if [ $1 -eq 0 ]; then 
        echo -e "\e[32m success \e[0m"
    else 
        echo -e "\e[31m failure \e[0m"
        exit 2
    fi
}

echo -e "\e[35m Configuring ${COMPONENT} ......! \e[0m \n"

echo -n "Configuring ${COMPONENT} repo :"
curl --silent --location https://rpm.nodesource.com/setup_16.x | bash - &>> ${LOGFILE} 
stat $? 

echo -n "Installing NodeJS :"
yum install nodejs -y   &>> ${LOGFILE} 
stat $?

id ${APPUSER}  &>> ${LOGFILE} 
if [ $? -ne 0 ] ; then 
    echo -n "Creating Application User Account :"
    useradd roboshop 
    stat $? 
fi 





# echo -n "Downloading the ${COMPONENT} schema: "
# curl -s -L -o /tmp/${COMPONENT}.zip "https://github.com/stans-robot-project/${COMPONENT}/archive/main.zip" 
# stat $? 

# echo -n "Extracing the ${COMPONENT} Schema:"
# cd /tmp 
# unzip -o ${COMPONENT}.zip &>> ${LOGFILE} 
# stat $? 


# echo -n "Injecting ${COMPONENT} Schema:"
# cd ${COMPONENT}-main
# mongo < catalogue.js    &>>  ${LOGFILE}
# mongo < users.js        &>>  ${LOGFILE}
# stat $? 

# echo -e "\e[35m ${COMPONENT} Installation Is Completed \e[0m \n"