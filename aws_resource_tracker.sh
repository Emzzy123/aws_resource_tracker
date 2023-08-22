#!/bin/bash

####################################################
# Author: Emeka
# Date: 21th-Aug-2023
#
# Version: v1
# This script would report the AWS resource usage
#####################################################

# AWS S3
# AWS EC2
# AWS IAM Users
# AWS Lambda

# list S3 buckets
echo "Print list of s3 buckets"
aws s3 ls > resourceTracker

#list EC2 Instances
echo "Print list of ec2 buckets"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker

#list aws lambda
echo "Print list of lambda functions"
aws lambda list-functions >> resourceTracker:q!

#list IAM users
echo "Print list of IAM Users"
aws iam list-users
