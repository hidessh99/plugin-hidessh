#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
os_name=$(cat /etc/os-release | awk -F '=' '/^NAME/{print $2}' | awk '{print $1}' | tr -d '"')
#########################
clear
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;41;36m               DELETE USER                \E[0m"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""

read -p "User: " -e user

if [ "$os_name" == "Ubuntu" ]
then
         killall -9 -u $user > /dev/null 2>&1
         userdel -f -r $user > /dev/null 2>&1
elif [ "$os_name" == "Debian" ]
then
        deluser=$(ps aux | grep "${user} \[priv\]" | sort -k 72 | awk '{print $2}')
        kill "${deluser}"
        killall -u $user > /dev/null 2>&1
        userdel -f -r $user > /dev/null 2>&1
elif [ "$os_name" == "CentOS" ]
then
        pkill -u $user > /dev/null 2>&1
        userdel $user > /dev/null 2>&1
fi