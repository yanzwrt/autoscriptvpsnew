#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                             VMESS $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 1$y. Buat Akun XRAYS Vmess Websocket"
echo -e "$yy 2$y. Hapus Akun XRAYS Vmess Websocket"
echo -e "$yy 3$y. Perpanjang Akun XRAYS Vmess Active Life"
echo -e "$yy 4$y. Cek Pengguna Login XRAYS Vmess"
echo -e "$yy 5$y. Perbarui Certificate Akun XRAYS"
echo -e "$yy 6$y. Menu"
echo -e "$yy 7$y. keluar"
echo -e "$y-------------------------------------------------------------$wh"
read -p "Pilih Dari opsi [ 1 - 7 ] : " menu
echo -e ""
case $menu in
1)
addvmess
;;
2)
delvmess
;;
3)
renewvmess
;;
4)
cekvmess
;;
5)
certv2ray
;;
6)
clear
menu
;;
7)
clear
exit
;;
*)
clear
menu
;;
esac
