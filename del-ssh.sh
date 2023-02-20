#!/bin/bash

read -p "User: " -e user

if [ "$os_name" == "Ubuntu" ]
then
        deluser=$(ps aux | grep "${user} \[priv\]" | sort -k 72 | awk '{print $2}')
        kill "${deluser}"
        userdel -f -r $user > /dev/null 2>&1
        systemctl restart ssh; systemctl restart sshd
elif [ "$os_name" == "Debian" ]
then
        deluser=$(ps aux | grep "${user} \[priv\]" | sort -k 72 | awk '{print $2}')
        kill "${deluser}"
        userdel -f -r $user > /dev/null 2>&1
        systemctl restart ssh; systemctl restart sshd
elif [ "$os_name" == "CentOS" ]
then
        pkill -u $user > /dev/null 2>&1
        userdel $user > /dev/null 2>&1
        systemctl restart ssh; systemctl restart sshd
fi