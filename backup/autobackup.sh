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
clear
IP=$(wget -qO- ipinfo.io/ip);
date=$(date +"%Y-%m-%d");
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info="${Green_font_prefix}[ON]${Font_color_suffix}"
Error="${Red_font_prefix}[OFF]${Font_color_suffix}"
cek=$(grep -c -E "^# BEGIN_Backup" /etc/crontab)
if [[ "$cek" = "1" ]]; then
sts="${Info}"
else
sts="${Error}"
fi
function start() {
email=$(cat /home/email)
if [[ "$email" = "" ]]; then
echo "Please enter your email"
read -rp "Email : " -e email
cat <<EOF>>/home/email
$email
EOF
fi
cat << EOF >> /etc/crontab
# BEGIN_Backup
5 0 * * * root backup
# END_Backup
EOF
service cron restart
sleep 1
echo " Silahkan Tunggu"
clear
echo " Pencadangan Otomatis Telah Dimulai"
echo " Data Akan Dicadangkan Secara Otomatis di 00:05 GMT +7"
exit 0
}
function stop() {
email=$(cat /home/email)
sed -i "/^$email/d" /home/email
sed -i "/^# BEGIN_Backup/,/^# END_Backup/d" /etc/crontab
service cron restart
sleep 1
echo " Silahkan Tunggu"
clear
echo " Pencadangan otomatis Telah Dihentikan"
exit 0
}

function gantipenerima() {
rm -rf /home/email
echo "Silakan masukkan email Anda"
read -rp "Email : " -e email
cat <<EOF>>/home/email
$email
EOF
}
function gantipengirim() {
echo "Silakan masukkan email Anda"
read -rp "Email : " -e email
echo "Silakan masukkan kata sandi email Anda"
read -rp "Password : " -e pwdd
rm -rf /etc/msmtprc
cat<<EOF>>/etc/msmtprc
defaults
tls on
tls_starttls on
tls_trust_file /etc/ssl/certs/ca-certificates.crt
account default
host smtp.gmail.com
port 587
auth on
user $email
from $email
password $pwdd
logfile ~/.msmtp.log
EOF
}
function testemail() {
email=$(cat /home/email)
if [[ "$email" = "" ]]; then
start
fi
email=$(cat /home/email)
echo -e "
Ini adalah isi email yang mencoba mengirim email dari vps
IP VPS : $IP
Date : $date
" | mail -s "Tes Pengiriman Email" $email
}
clear
echo -e "=============================="
echo -e "     Autobackup Data $sts     "
echo -e "=============================="
echo -e "1. Mulai Pencadangan Otomatis"
echo -e "2. Hentikan Pencadangan Otomatis"
echo -e "3. Ubah Email Penerima"
echo -e "4. Ubah Email Pengirim"
echo -e "5. Tes kirim Email"
echo -e "=============================="
read -rp "Silakan Masukkan Nomor yang Benar : " -e num
case $num in
1)
start
;;
2)
stop
;;
3)
gantipenerima
;;
4)
gantipengirim
;;
5)
testemail
;;
*)
clear
;;
esac
