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

read -p "Username SSH to Delete : " Login

if [ "$os_name" == "Ubuntu" ]
then
     killall -9 -u $Login > /dev/null 2>&1
         userdel -f -r $Login > /dev/null 2>&1

elif [ "$os_name" == "Debian" ]
then
    pkill -u $Login > /dev/null 2>&1
        userdel -f -r $Login > /dev/null 2>&1

elif [ "$os_name" == "CentOS" ]
then
        pkill -u $Login > /dev/null 2>&1
        userdel $Login > /dev/null 2>&1
fi