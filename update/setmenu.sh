#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                   SYSTEM SETTING$wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 1$y.  Tambah Atau Ubah Subdomain Host untuk VPS"
echo -e "$yy 2$y.  Perbarui Certificate Akun"
echo -e "$yy 3$y.  Ubah Port dari beberapa Service"
echo -e "$yy 4$y.  Autobackup Data VPS"
echo -e "$yy 5$y.  Backup Data VPS"
echo -e "$yy 6$y.  Restore Data VPS"
echo -e "$yy 7$y.  Webmin Menu"
echo -e "$yy 8$y.  Limit Bandwith Speed Server"
echo -e "$yy 9$y.  Cek Penggunaan RAM di VPS"
echo -e "$yy 10$y. Mulai Ulang VPS"
echo -e "$yy 11$y. Uji Kecepatan VPS"
echo -e "$yy 12$y. Tampilkan Informasi System "
echo -e "$yy 13$y. Info Script Auto Install"
echo -e "$yy 14$y. Menu"
echo -e "$yy 15$y. Keluar"
echo -e "$y-------------------------------------------------------------$wh"
echo -e ""
read -p "Of Some Service [ 1 - 60 ] : " menu
echo -e ""
case $menu in
1)
addhost
;;
2)
certv2ray
;;
3)
changeport
;;
4)
autobackup
;;
5)
backup
;;
6)
restore
;;
7)
wbmn
;;
8)
limitspeed
;;
9)
ram
;;
10)
reboot
/sbin/reboot
;;
11)
speedtest
;;
12)
info
;;
13)
about
;;
14)
clear
menu
;;
15)
clear
exit
;;
*)
clear
menu
;;
esac
