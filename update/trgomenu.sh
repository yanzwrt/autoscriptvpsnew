#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                        TROJAN GO $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 1$y. Buat Akun Trojan Go"
echo -e "$yy 2$y. Hapus Akun Trojan Go"
echo -e "$yy 3$y. Perpanjang Akun Trojan Go Active Life"
echo -e "$yy 4$y. Cek Pengguna Login Trojan Go"
echo -e "$yy 5$y. Menu"
echo -e "$yy 6$y. keluar"
echo -e "$y-------------------------------------------------------------$wh"
read -p "Pilih Dari opsi [ 1 - 6 ] : " menu
echo -e ""
case $menu in
1)
addtrgo
;;
2)
deltrgo
;;
3)
renewtrgo
;;
4)
cektrgo
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
