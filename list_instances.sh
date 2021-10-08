#!/bin/bash

#List Instance in Regions if Instances Exist

#Region
#"instanceid": "",
#"state": "",
#"name": "",
#"type": "",
#"key": ""


for region in `aws ec2 describe-regions --output text --region us-east-1| cut -f4`; do 
  (echo -e "\nListing Instances in region:'$region'..."); 
  aws ec2 describe-instances --region $region | jq '.Reservations[] | ( .Instances[] | {instanceid: .InstanceId, state: .State.Name, name: .KeyName, type: .InstanceType, key: .KeyName})'  ;
done
