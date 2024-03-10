#!/bin/bash

#########################################################
# Name of script: Aws monitor script
# Date          : 10-03-2024
# Author        : Chandrasena Reddy Basireddy
# Output        : EC2,S3,IAM
# Source        : using shell script how to monitor the aws services
########################################################

set -x
set -e
set -o pipefail

#EC2
echo "EC2 details"
#aws EC2 describe-instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
#s3
echo "list S3 Buckets"
aws s3 ls
# list the IAM user
aws iam list-users | jq '.Users[].UserName'
