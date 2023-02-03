#!/bin/bash

#add akun SSH
wget -O /usr/local/bin/add-ssh-user "https://raw.githubusercontent.com/hidessh99/plugin-hidessh/main/add-ssh.sh" && chmod +x /usr/local/bin/add-ssh-user
#delete akun SSH
wget -O /usr/local/bin/del-ssh-user "https://raw.githubusercontent.com/hidessh99/plugin-hidessh/main/del-ssh.sh" && chmod +x /usr/local/bin/del-ssh-user


#add vmess
wget -O /usr/local/bin/add-vmess-user "https://raw.githubusercontent.com/hidessh99/plugin-hidessh/main/fightertunnel/add-vmees.sh" && chmod +x /usr/local/bin/add-vmess-user
wget -O /usr/local/bin/del-vmess-user "https://raw.githubusercontent.com/hidessh99/Package-tambahan-Seller/main/hide/del-v2ray-user.sh" && chmod +x /usr/local/bin/del-vmess-user

#add trojan
wget -O /usr/local/bin/add-trojan-user "https://raw.githubusercontent.com/hidessh99/plugin-hidessh/main/fightertunnel/add-trojan.sh" && chmod +x /usr/local/bin/add-trojan-user
#delete trojan
wget -O /usr/local/bin/del-trojan-user "https://raw.githubusercontent.com/hidessh99/Package-tambahan-Seller/main/hide/del-trojango-user.sh" && chmod +x /usr/local/bin/del-trojan-user