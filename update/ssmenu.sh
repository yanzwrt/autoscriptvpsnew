#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                         SHADOWSOCKS $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 1$y. Buat Akun Shadowsocks"
echo -e "$yy 2$y. Hapus Akun Shadowsocks"
echo -e "$yy 3$y. Perpanjang Akun Shadowsocks Active Life"
echo -e "$yy 4$y. Cek Pengguna Login Shadowsocks"
echo -e "$yy 5$y. Menu"
echo -e "$yy 6$y. Keluar"
echo -e "$y-------------------------------------------------------------$wh"
read -p "Pilih Dari opsi [ 1 - 6 ] : " menu
echo -e ""
case $menu in
1)
addss
;;
2)
delss
;;
3)
renewss
;;
4)
cekss
;;
5)
clear
menu
;;
6)
clear
exit
;;
*)
clear
menu
;;
esac
