#!/bin/bash
HostName=myhostname.com
HostIP=$(host -ta $HostName|head -n1)
HostIP=${HostIP##$HostName has address }
set -x
ssh-keygen -R $HostName
ssh-keygen -R $HostIP
if (echo > /dev/tcp/$HostName/22) 2> /dev/null; then
    ssh-keyscan -t ecdsa $HostName >> ~/.ssh/known_hosts
    ssh-keyscan -t ecdsa $HostIP   >> ~/.ssh/known_hosts
else
    ssh-keyscan -p 1000 -t ecdsa $HostName >> ~/.ssh/known_hosts
    ssh-keyscan -p 1000 -t ecdsa $HostIP   >> ~/.ssh/known_hosts
fi
