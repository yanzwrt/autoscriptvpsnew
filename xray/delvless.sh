#!/bin/bash
# My Telegram : https://t.me/Rakha_Putra21
# ==========================================
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
clear
NUMBER_OF_CLIENTS=$(grep -c -E "^#### " "/etc/xray/config.json")
	if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
		echo ""
		echo "You have no existing clients!"
		exit 1
	fi

	clear
	echo ""
	echo " Pilih pengguna yang ada yang ingin Anda hapus"
	echo " tekan CTRL+C untuk kembali"
	echo " ==============================="
	echo "     tidak ada pengguna yang kadaluwarsa"
	grep -E "^#### " "/etc/xray/config.json" | cut -d ' ' -f 2-3 | nl -s ') '
	until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
		if [[ ${CLIENT_NUMBER} == '1' ]]; then
			read -rp "Pilih satu pengguna [1]: " CLIENT_NUMBER
		else
			read -rp "Pilih satu pengguna [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
		fi
	done
user=$(grep -E "^#### " "/etc/xray/config.json" | cut -d ' ' -f 2 | sed -n "${CLIENT_NUMBER}"p)
exp=$(grep -E "^#### " "/etc/xray/config.json" | cut -d ' ' -f 3 | sed -n "${CLIENT_NUMBER}"p)
sed -i "/^#### $user $exp/,/^},{/d" /etc/xray/config.json
sed -i "/^#### $user $exp/,/^},{/d" /etc/xray/config.json
systemctl restart xray.service
service cron restart
clear
echo ""
echo "==============================="
echo "  XRAYS/Vless Akun Dihapus     "
echo "==============================="
echo "Nama Pengguna    : $user"
echo "Berlaku Sampai   : $exp"
echo "==============================="