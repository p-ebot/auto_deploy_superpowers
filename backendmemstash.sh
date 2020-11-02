#!/bin/bash
ipaddress=$( tail -n 1 inventory )
echo $ipaddress
curl -H "Content-Type: text/plain" -H "token: 564ca3e8-c2c4-40a8-8510-84236d6ddf29" --request PUT --data "" https://api.memstash.io/values/backend
curl -H "Content-Type: text/plain" -H "token: 564ca3e8-c2c4-40a8-8510-84236d6ddf29" --request PUT --data "arn:aws:s3:::udapeople-${CIRCLE_WORKFLOW_ID:0:7}" https://api.memstash.io/values/frontend