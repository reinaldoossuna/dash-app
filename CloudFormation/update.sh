#!/bin/bash
#
# 3 parameters
# 1. stack-name
# 2. template file
# 3. parameters file - Optional
#
aws cloudformation update-stack --capabilities CAPABILITY_IAM --stack-name $1 --template-body file://$2 --parameters file://$3
