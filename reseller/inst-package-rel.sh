#!/bin/bash

# SSH
wget -O /usr/local/bin/add-ssh-user "https://raw.githubusercontent.com/hidessh99/plugin-hidessh/main/add-ssh.sh" && chmod +x /usr/local/bin/add-ssh-user
wget -O /usr/local/bin/del-ssh-user "https://raw.githubusercontent.com/hidessh99/plugin-hidessh/main/del-ssh.sh" && chmod +x /usr/local/bin/del-ssh-user

# vmess
wget -O /usr/local/bin/add-vmess-user "https://raw.githubusercontent.com/hidessh99/plugin-hidessh/main/reseller/add-vmess-rel.sh" && chmod +x /usr/local/bin/add-vmess-user
wget -O /usr/local/bin/del-vmess-user "https://raw.githubusercontent.com/hidessh99/plugin-hidessh/main/reseller/del-vmess-rel.sh" && chmod +x /usr/local/bin/del-vmess-user

#add trojan
wget -O /usr/local/bin/add-trojan-user "https://raw.githubusercontent.com/hidessh99/plugin-hidessh/main/reseller/add-trojan-rel.sh" && chmod +x /usr/local/bin/add-trojan-user
wget -O /usr/local/bin/del-trojan-user "https://raw.githubusercontent.com/hidessh99/plugin-hidessh/main/reseller/del-trojan-rel.sh" && chmod +x /usr/local/bin/del-trojan-user

#vless
wget -O /usr/local/bin/add-vless-user "https://raw.githubusercontent.com/hidessh99/plugin-hidessh/main/reseller/add-vless-user.sh" && chmod +x /usr/local/bin/add-vless-user
wget -O /usr/local/bin/del-vless-user "https://raw.githubusercontent.com/hidessh99/plugin-hidessh/main/reseller/del-vless-user.sh" && chmod +x /usr/local/bin/del-vless-user