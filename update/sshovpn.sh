#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                 SSH & OpenVPN $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 1$y.  Buat SSH & OpenVPN Account"
echo -e "$yy 2$y.  Generate SSH & OpenVPN Trial Account"
echo -e "$yy 3$y.  Perpanjang SSH & OpenVPN Account Active Life"
echo -e "$yy 4$y.  Cek User Login SSH & OpenVPN"
echo -e "$yy 5$y.  Daftar Member SSH & OpenVPN"
echo -e "$yy 6$y.  Hapus SSH & OpenVpn Account"
echo -e "$yy 7$y.  Hapus Pengguna Expired SSH & OpenVPN"
echo -e "$yy 8$y.  Set up Autokill SSH"
echo -e "$yy 9$y.  Tampilkan Users Who Do Multi Login SSH"
echo -e "$yy 10$y. Muali Ulang Service"
echo -e "$yy 11$y. Menu Utama"
echo -e "$yy 12$y. Exit"
echo -e "$y-------------------------------------------------------------$wh"
read -p "Pilih Dari opsi [ 1 - 12 ] : " menu
echo -e ""
case $menu in
1)
addssh
;;
2)
trialssh
;;
3)
renewssh
;;
4)
cekssh
;;
5)
member
;;
6)
delssh
;;
7)
delexp
;;
8)
autokill
;;
9)
ceklim
;;
10)
restart
;;
11)
menu
;;
12)
clear
exit
;;
*)
clear
menu
;;
esac
