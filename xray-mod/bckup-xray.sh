{
  "log" : {
    "access": "/var/log/xray/access.log",
    "error": "/var/log/xray/error.log",
    "loglevel": "info"
  },
  "inbounds": [
    {
      "listen": "127.0.0.1",
      "port": "10001",
      "protocol": "vmess",
      "settings": {
        "clients": [
          {
            "id": "$uuid",
            "alterId": 0
#vmess
          }
        ]
      },
      "streamSettings":{
        "network": "ws",
        "wsSettings": {
          "path": "/vmess",
          "alpn": [
            "h2",
            "http/1.1"
          ]
        }
      }
    },
    {
      "listen": "127.0.0.1",
      "port": "10002",
      "protocol": "vless",
      "settings": {
        "decryption":"none",
        "clients": [
          {
            "id": "$uuid"
#vless
          }
        ]
      },
      "streamSettings":{
        "network": "ws",
        "wsSettings": {
          "path": "/vless",
          "alpn": [
            "h2",
            "http/1.1"
          ]
        }
      }
    },
    {
      "listen": "127.0.0.1",
      "port": "10003",
      "protocol": "trojan",
      "settings": {
        "decryption":"none",
        "clients": [
          {
            "password": "$uuid"
#trojan
          }
        ]
      },
      "streamSettings":{
        "network": "ws",
        "wsSettings": {
          "path": "/trojan",
          "alpn": [
            "h2",
            "http/1.1"
          ]
        }
      }
    },
    {
      "listen": "127.0.0.1",
      "port": "10006",
      "protocol": "shadowsocks",
      "settings": {
        "clients": [
            {
              "method": "$cipher",
              "password": "$uuid"
#shadowsocks
            }
          ],
        "network": "tcp,udp"
      },
      "streamSettings":{
        "network": "ws",
        "wsSettings": {
          "path": "/shadowsocks",
          "alpn": [
            "h2",
            "http/1.1"
          ]
        }
      }
    },
    {
      "listen": "127.0.0.1",
      "port": "10005",
      "protocol": "shadowsocks",
      "settings": {
        "method": "$cipher2",
        "password": "$serverpsk",
        "clients": [
          {
            "password": "$userpsk"
#shadowsocks2022
          }
        ],
        "network": "tcp,udp"
      },
      "streamSettings":{
        "network": "ws",
        "wsSettings": {
          "path": "/shadowsocks2022",
          "alpn": [
            "h2",
            "http/1.1"
          ]
        }
      }
    },
    {
      "listen": "127.0.0.1",
      "port": "10006",
      "protocol": "socks",
      "settings": {
        "auth": "password",
        "accounts": [
            {
              "user": "private",
              "pass": "server"
#socks
            }
          ],
        "udp": true,
        "ip": "127.0.0.1"
      },
      "streamSettings":{
        "network": "ws",
        "wsSettings": {
          "path": "/socks5",
          "alpn": [
            "h2",
            "http/1.1"
          ]
        }
      }
    },
    {
      "listen": "127.0.0.1",
      "port": "20001",
      "protocol": "vmess",
      "settings": {
        "clients": [
          {
            "id": "$uuid",
            "alterId": 0
#vmess-grpc
          }
        ]
      },
      "streamSettings":{
        "network": "grpc",
        "grpcSettings": {
          "serviceName": "vmess-grpc",
          "alpn": [
            "h2",
            "http/1.1"
          ]
        }
      }
    },
    {
      "listen": "127.0.0.1",
      "port": "20002",
      "protocol": "vmess",
      "settings": {
        "clients": [
          {
            "id": "$uuid",
            "alterId": 0
#vmess-grpc
          }
        ]
      },
      "streamSettings":{
        "network": "grpc",
        "grpcSettings": {
          "serviceName": "vmess-grpc",
          "alpn": [
            "h2",
            "http/1.1"
          ]
        }
      }
    },
    {
      "listen": "127.0.0.1",
      "port": "20002",
      "protocol": "vless",
      "settings": {
        "decryption":"none",
        "clients": [
          {
            "id": "$uuid"
#vless-grpc
          }
        ]
      },
      "streamSettings":{
        "network": "grpc",
        "grpcSettings": {
          "serviceName": "vless-grpc",
          "alpn": [
            "h2",
            "http/1.1"
          ]
        }
      }
    },
    {
      "listen": "127.0.0.1",
      "port": "20003",
      "protocol": "trojan",
      "settings": {
        "decryption":"none",
        "clients": [
          {
            "password": "$uuid"
#trojan-grpc
          }
        ],
        "udp": true
      },
      "streamSettings":{
        "network": "grpc",
        "grpcSettings": {
          "serviceName": "trojan-grpc",
          "alpn": [
            "h2",
            "http/1.1"
          ]
        }
      }
    },
    {
      "listen": "127.0.0.1",
      "port": "20004",
      "protocol": "shadowsocks",
      "settings": {
        "clients": [
            {
              "method": "$cipher",
              "password": "$uuid"
#shadowsocks-grpc
            }
          ],
        "network": "tcp,udp"
      },
      "streamSettings":{
        "network": "grpc",
        "grpcSettings": {
          "serviceName": "shadowsocks-grpc",
          "alpn": [
            "h2",
            "http/1.1"
          ]
        }
      }
    },
    {
      "listen": "127.0.0.1",
      "port": "20005",
      "protocol": "shadowsocks",
      "settings": {
        "method": "$cipher2",
        "password": "$serverpsk",
        "clients": [
          {
            "password": "$userpsk"
#shadowsocks2022-grpc
          }
        ],
        "network": "tcp,udp"
      },
      "streamSettings":{
        "network": "grpc",
        "grpcSettings": {
          "serviceName": "shadowsocks2022-grpc",
          "alpn": [
            "h2",
            "http/1.1"
          ]
        }
      }
    },
    {
      "listen": "127.0.0.1",
      "port": "20006",
      "protocol": "socks",
      "settings": {
        "auth": "password",
        "accounts": [
            {
              "user": "private",
              "pass": "server"
#socks-grpc
            }
          ],
        "udp": true,
        "ip": "127.0.0.1"
      },
      "streamSettings":{
        "network": "grpc",
        "grpcSettings": {
          "serviceName": "socks5-grpc",
          "alpn": [
            "h2",
            "http/1.1"
          ]
        }
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom",
      "tag": "direct"
    },
    {
      "protocol": "blackhole",
      "tag": "block"
    }
  ]
}