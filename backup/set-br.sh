#!/bin/bash

# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
repo="https://raw.githubusercontent.com/YogzSC/scvip/main"
sudo apt install ruby -y
gem install lolcat -y
apt install msmtp-mta ca-certificates bsd-mailx -y

read -rp "input your chat id Telegram:" nenen
echo "$nenen" >> /root/id

cd /usr/bin
wget -O mautobackup "${repo}/backup/autobackup.sh"
wget -O /usr/bin/mbackup "${repo}/backup/backup.sh"
wget -O /usr/bin/mrestore "${repo}/backup/restore.sh"



wget -O mlimitspeed "${repo}/backup/limitspeed.sh"
chmod +x mautobackup
chmod +x /usr/bin/mbackup
chmod +x /usr/bin/mrestore
chmod +x mlimitspeed
cd
rm -f /root/set-br.sh