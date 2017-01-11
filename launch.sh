#!/bin/bash

aws cloudformation create-stack \
	--stack-name UserDataTestStack \
    --template-body file://cf.json \
    --parameters ParameterKey=UserData,ParameterValue=`cat cloud-init.sh | base64`