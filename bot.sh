#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);
repo="https://raw.githubusercontent.com/YogzKYT/scvip/main"
IZIN=$(curl -sS https://raw.githubusercontent.com/YogzKYT/permission/main/ip | awk '{print $4}' | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo "IZIN DI TERIMA!!"
else
clear
figlet "Akses di tolak!! Silakan Hubungi Admin" | lolcat
exit 0
fi

#install
cp /media/cybervpn/var.txt /tmp
cp /root/cybervpn/var.txt /tmp
rm -rf cybervpn
apt update && apt upgrade -y
apt install python3 python3-pip -y
apt install sqlite3 -y
cd /media/
rm -rf cybervpn
wget ${repo}/botssh/cybervpn.zip
unzip cybervpn.zip
cd cybervpn
rm var.txt
rm database.db
pip3 install -r requirements.txt
pip install pillow
pip install speedtest-cli
pip3 install aiohttp
pip3 install paramiko
#isi data
azi=$(cat /root/nsdomain)
domain=$(cat /etc/xray/domain)
echo "INSTALL BOT CREATE SSH via TELEGRAM"
read -e -p "[*] Input Your Id Telegram :" admin
read -e -p "[*] Input Your bot Telegram :" token
read -e -p "[*] Input username Telegram :" user

cat > /media/cybervpn/var.txt << END
ADMIN="$admin"
BOT_TOKEN="$token"
DOMAIN="$domain"
DNS="$azi"
PUB="7fbd1f8aa0abfe15a7903e837f78aba39cf61d36f183bd604daa2fe4ef3b7b59"
OWN="$user"
SALDO="100000"
END


clear
echo "Done"
echo "Your Data Bot"
echo -e "==============================="
echo "Api Token     : $token"
echo "ID            : $admin"
echo "DOMAIN        : $domain"
echo -e "==============================="
echo "Setting done"


rm -f /usr/bin/nenen

echo -e '#!/bin/bash\ncd /media/\npython3 -m cybervpn' > /usr/bin/nenen


chmod 777 /usr/bin/nenen

cat > /etc/systemd/system/cybervpn.service << END
[Unit]
Description=Simple CyberVPN - @CyberVPN
After=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/nenen
Restart=always

[Install]
WantedBy=multi-user.target

END
systemctl daemon-reload
systemctl start cybervpn
systemctl enable cybervpn

clear
echo "downloading asset"

wget -q -O /usr/bin/panelbot "${repo}/botssh/panelbot.sh" && chmod +x /usr/bin/panelbot


wget -q -O /usr/bin/add-ip-bot "${repo}/botssh/add-ip-bot.sh" && chmod +x /usr/bin/add-ip-bot


wget -q -O /usr/bin/addnoobz "${repo}/botssh/addnoobz.sh" && chmod +x /usr/bin/addnoobz



wget -q -O /media/log-install.txt "${repo}/botssh/log-install.txt"



wget -q -O /usr/bin/add-vless "${repo}/botssh/add-vless.sh" && chmod +x /usr/bin/add-vless

wget -q -O /usr/bin/addtr "${repo}/botssh/addtr.sh" && chmod +x /usr/bin/addtr


wget -q -O /usr/bin/addws "${repo}/botssh/addws.sh" && chmod +x /usr/bin/addws


wget -q -O /usr/bin/addss "${repo}/botssh/addss.sh" && chmod +x /usr/bin/addss

wget -q -O /usr/bin/cek-ssh "${repo}/botssh/cek-ssh.sh" && chmod +x /usr/bin/cek-ssh



wget -q -O /usr/bin/cek-ss "${repo}/botssh/cek-ss.sh" && chmod +x /usr/bin/cek-ss




wget -q -O /usr/bin/cek-tr "${repo}/botssh/cek-tr.sh" && chmod +x /usr/bin/cek-tr

wget -q -O /usr/bin/cek-vless "${repo}/botssh/cek-vless.sh" && chmod +x /usr/bin/cek-vless

wget -q -O /usr/bin/cek-ws "${repo}/botssh/cek-ws.sh" && chmod +x /usr/bin/cek-ws

wget -q -O /usr/bin/del-vless "${repo}/botssh/del-vless.sh" && chmod +x /usr/bin/del-vless




wget -q -O /usr/bin/cek-noobz "${repo}/botssh/cek-noobz.sh" && chmod +x /usr/bin/cek-noobz



wget -q -O /usr/bin/deltr "${repo}/botssh/deltr.sh" && chmod +x /usr/bin/deltr

wget -q -O /usr/bin/delws "${repo}/botssh/delws.sh" && chmod +x /usr/bin/delws



wget -q -O /usr/bin/delss "${repo}/botssh/delss.sh" && chmod +x /usr/bin/delss



wget -q -O /usr/bin/renew-ss "${repo}/botssh/renew-ss.sh" && chmod +x /usr/bin/renew-ss


wget -q -O /usr/bin/renewtr "${repo}/botssh/renewtr.sh" && chmod +x /usr/bin/renewtr


wget -q -O /usr/bin/renewvless "${repo}/botssh/renewvless.sh" && chmod +x /usr/bin/renewvless


wget -q -O /usr/bin/renewws "${repo}/botssh/renewws.sh" && chmod +x /usr/bin/renewws


wget -q -O /usr/bin/cek-mws "${repo}/botssh/cek-mws.sh" && chmod +x /usr/bin/cek-mws

wget -q -O /usr/bin/cek-mvs "${repo}/botssh/cek-mvs.sh" && chmod +x /usr/bin/cek-mvs


wget -q -O /usr/bin/cek-mss "${repo}/botssh/cek-mss.sh" && chmod +x /usr/bin/cek-mss



wget -q -O /usr/bin/cek-mts "${repo}/botssh/cek-mts.sh" && chmod +x /usr/bin/cek-mts

cp /tmp/var.txt /media/cybervpn

echo " Installations complete, type /menu on your bot "

rm /media/cybervpn.zip