#!/bin/bash

#add akun SSH
wget -O /usr/local/bin/add-ssh-user "https://raw.githubusercontent.com/hidessh99/plugin-hidessh/main/add-ssh.sh" && chmod +x /usr/local/bin/add-ssh-user
wget -O /usr/local/bin/del-ssh-user "https://raw.githubusercontent.com/hidessh99/plugin-hidessh/main/del-ssh.sh" && chmod +x /usr/local/bin/del-ssh-user

#add vmess
wget -O /usr/local/bin/add-vmess-user "https://raw.githubusercontent.com/hidessh99/plugin-hidessh/main/pckg3-hide/add-vmess.sh" && chmod +x /usr/local/bin/add-vmess-user
wget -O /usr/local/bin/del-vmess-user "https://raw.githubusercontent.com/hidessh99/plugin-hidessh/main/pckg3-hide/del-vmess.sh" && chmod +x /usr/local/bin/del-vmess-user

#add trojan
wget -O /usr/local/bin/add-trojan-user "https://raw.githubusercontent.com/hidessh99/plugin-hidessh/main/pckg3-hide/add-trojan.sh" && chmod +x /usr/local/bin/add-trojan-user
wget -O /usr/local/bin/del-trojan-user "https://raw.githubusercontent.com/hidessh99/plugin-hidessh/main/pckg3-hide/del-trojan.sh" && chmod +x /usr/local/bin/del-trojan-user