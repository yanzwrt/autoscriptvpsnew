#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                                SSTP $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 1$y. Buat Akun SSTP"
echo -e "$yy 2$y. Hapus Akun SSTP"
echo -e "$yy 3$y. Perpanjang Akun SSTP Active Life"
echo -e "$yy 4$y. Cek User Login SSTP"
echo -e "$yy 5$y. Menu"
echo -e "$yy 6$y. Keluar"
echo -e "$y-------------------------------------------------------------$wh"
read -p "Pilih Dari opsi [ 1 - 6 ] : " menu
echo -e ""
case $menu in
1)
addsstp
;;
2)
delsstp
;;
3)
renewsstp
;;
4)
ceksstp
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
