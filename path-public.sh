#!/bin/bash
# Path: path-public.sh

mkdir /usr/local/hidessh
#path vmess
cat > /usr/local/hidessh/vmess.txt << END
/hidessh-vmess
END
#path vless
cat > /usr/local/hidessh/vless.txt << END
/hidessh-vless
END
#path trojan
cat > /usr/local/hidessh/trojan.txt << END
/hidessh-trojan
END
#path Shadowsocks
cat > /usr/local/hidessh/ss.txt << END
/hidessh-ss
END
#path Shadowsocks 2022
cat > /usr/local/hidessh/ss2022.txt << END
/hidessh-ss2022
END
#path socks
cat > /usr/local/hidessh/socks5.txt << END
/hidessh-socks5
END

#path vmess GPRC
cat > /usr/local/hidessh/vmessgprc.txt << END
hidessh-vmessgprc
END
#path vless GPRC
cat > /usr/local/hidessh/vlessgprc.txt << END
hidessh-vlessgprc
END
#path trojan GPRC
cat > /usr/local/hidessh/trojangprc.txt << END
hidessh-trojangprc
END
#path Shadowsocks GPRC
cat > /usr/local/hidessh/ssgprc.txt << END
hidessh-ssgprc
END
#path Shadowsocks 2022 GPRC
cat > /usr/local/hidessh/ss2022gprc.txt << END
hidessh-ss2022gprc
END
#path socks GPRC
cat > /usr/local/hidessh/socks5gprc.txt << END
hidessh-socks5gprc
END