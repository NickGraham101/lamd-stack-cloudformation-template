#!/bin/bash
PATH=/sbin:/bin:/usr/sbin:/usr/bin:/home/centos/.local/bin
myservice=$1
status=$(systemctl | grep $1 | grep -c running)
if [[ $status -ge 1 ]]
then
 echo ${myservice%.*} Running $(date +%Y-%m-%dT%H:%M:%S).000Z > /dev/null
 aws cloudwatch put-metric-data --metric-name ${myservice%.*} --namespace GandTServices --value 1 --timestamp $(date +%Y-%m-%dT%H:%M:%S).000Z
fi

