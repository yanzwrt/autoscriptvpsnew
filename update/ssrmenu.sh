#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                         SHADOWSOCKSR $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 1$y. Buat Akun SSR"
echo -e "$yy 2$y. Hapus Akun SSR"
echo -e "$yy 3$y. Perpanjang Akun SSR Active Life"
echo -e "$yy 4$y. Tampilkan semua SSR Menu"
echo -e "$yy 5$y. Menu"
echo -e "$yy 6$y. keluar"
echo -e "$y-------------------------------------------------------------$wh"
read -p "Pilih Dari opsi [ 1 - 6 ] : " menu
echo -e ""
case $menu in
1)
addssr
;;
2)
delssr
;;
3)
renewssr
;;
4)
ssr
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
