#!/bin/bash 

# To create a server, what all information needed ?
# 1) AMI ID 
# 2) Type Of Instance 
# 3) Security Group 
# 4) Instances you need 
# 5) DNS Record : Hosted Zone Id

AMI_ID="ami-0c1d144c8fdd8d690"
INSTANCE_TYPE="t3.micro"
SG_ID="sg-072a9ee99beac7e26"                             # b54-allow-all security group id

aws ec2 run-instances --image-id ${AMI_ID} --instance-type ${INSTANCE_TYPE} --security-group-ids ${SG_ID} --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=${COMPONENT}}]'

