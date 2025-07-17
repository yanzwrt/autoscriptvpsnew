#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"

echo -e "$y-------------------------------------------------------------$wh"
echo -e "$y             Telegram : https://t.me/Rakha_Putra21 $wh"
echo -e "$y           Premium Auto Script By RAKHA-VPN $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo ""
echo -e "$y SSH & OpenVPN $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 1$y.Buat SSH & OpenVPN Akun"
echo -e "$yy 2$y.Menghasilkan SSH & OpenVPN Akun Percobaan"
echo -e "$yy 3$y.Extending SSH & OpenVPN Account Active Life"
echo -e "$yy 4$y.Cek Pengguna Login SSH & OpenVPN"
echo -e "$yy 5$y.Daftar Member SSH & OpenVPN"
echo -e "$yy 6$y.Hapus SSH & OpenVpn Akun"
echo -e "$yy 7$y.Hapus Pengguna Kadaluwarsa SSH & OpenVPN"
echo -e "$yy 8$y.Set up Autokill SSH"
echo -e "$yy 9$y.Tampilkan Pengguna Multi Login SSH"
echo -e "$yy 10$y.Mulai Ulang Semua Service"
echo -e ""
echo -e "$y L2TP $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 11$y.Buat Akun L2TP"
echo -e "$yy 12$y.Hapus Akun L2TP"
echo -e "$yy 13$y.Perpanjang Akun L2TP Active Life"
echo -e ""
echo -e "$y PPTP $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 14$y.Buat Akun PPTP"
echo -e "$yy 15$y.Hapus Akun PPTP"
echo -e "$yy 16$y.Perpanjang Akun PPTP Active Life"
echo -e ""
echo -e "$y SSTP $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 17$y.Buat Akun SSTP"
echo -e "$yy 18$y.Hapus Akun SSTP"
echo -e "$yy 19$y.Perpanjang Akun SSTP Active Life"
echo -e "$yy 20$y.Cek User Login SSTP"
echo -e ""
echo -e "$y WIREGUARD $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 21$y.Buat Akun Wireguard"
echo -e "$yy 22$y.Hapus Akun Wireguard"
echo -e "$yy 23$y.Perpanjang Akun Wireguard Active Life"
echo -e ""
echo -e "$y SHADOWSOCKS $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 24$y.Buat Akun Shadowsocks"
echo -e "$yy 25$y.Hapus Akun Shadowsocks"
echo -e "$yy 26$y.Perpanjang Akun Shadowsocks Active Life"
echo -e "$yy 27$y.Cek User Login Shadowsocks"
echo -e ""
echo -e "$y SHADOWSOCKSR $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 28$y.Buat Akun SSR"
echo -e "$yy 29$y.Hapus Akun SSR"
echo -e "$yy 30$y.Perpanjang Akun SSR Active Life"
echo -e "$yy 31$y.Tampilkan Other SSR Menu"
echo -e ""
echo -e "$y XRAYS / VMESS $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 32$y.Buat Akun XRAYS Vmess Websocket"
echo -e "$yy 33$y.Hapus Akun XRAYS Vmess Websocket"
echo -e "$yy 34$y.Perpanjang Akun XRAYS Vmess Active Life"
echo -e "$yy 35$y.Cek User Login XRAYS Vmess"
echo -e "$yy 36$y.Perbarui Certificate XRAYS Akun"
echo -e ""
echo -e "$y XRAYS / VLESS $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 37$y.Buat Akun XRAYS Vless Websocket"
echo -e "$yy 38$y.Hapus Akun XRAYS Vless Websocket"
echo -e "$yy 39$y.Perpanjang Akun XRAYS Vless Active Life"
echo -e "$yy 40$y.Cek User Login XRAYS Vless"
echo -e ""
echo -e "$y XRAYS / TROJAN $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 41$y.Buat Akun XRAYS Trojan"
echo -e "$yy 42$y.Hapus Akun XRAYS Trojan"
echo -e "$yy 43$y.Perpanjang Akun XRAYS Trojan Active Life"
echo -e "$yy 44$y.Cek User Login XRAYS Trojan"
echo -e ""
echo -e "$y TROJAN GO $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 45$y.Buat Akun Trojan Go"
echo -e "$yy 46$y.Hapus Akun Trojan Go"
echo -e "$yy 47$y.Perpanjang Akun Trojan Go Active Life"
echo -e "$yy 48$y.Cek User Login Trojan Go"
echo ""
echo -e "$y SYSTEM $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 49$y.Tambah Atau Ubah Subdomain Host For VPS"
echo -e "$yy 50$y.Ubah Port Of Some Service"
echo -e "$yy 51$y.Autobackup Data VPS"
echo -e "$yy 52$y.Backup Data VPS"
echo -e "$yy 53$y.Restore Data VPS"
echo -e "$yy 54$y.Webmin Menu"
echo -e "$yy 55$y.Limit Bandwith Speed Server"
echo -e "$yy 56$y.Check Usage of VPS Ram"
echo -e "$yy 57$y.Mulai Ulang VPS"
echo -e "$yy 58$y.Cek Kecepatan VPS"
echo -e "$yy 59$y.Tampilkan Informasi System "
echo -e "$yy 60$y.Info Script Auto Install"
echo -e "$y-------------------------------------------------------------$wh"
echo -e ""
read -p "Pilih Dari Opsi [ 1 - 60 ] : " menu
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
addl2tp
;;
12)
dell2tp
;;
13)
renewl2tp
;;
14)
addpptp
;;
15)
delpptp
;;
16)
renewpptp
;;
17)
addsstp
;;
18)
delsstp
;;
19)
renewsstp
;;
20)
ceksstp
;;
21)
addwg
;;
22)
delwg
;;
23)
renewwg
;;
24)
addss
;;
25)
delss
;;
26)
renewss
;;
27)
cekss
;;
28)
addssr
;;
29)
delssr
;;
30)
renewssr
;;
31)
ssr
;;
32)
addvmess
;;
33)
delvmess
;;
34)
renewvmess
;;
35)
cekvmess
;;
36)
certv2ray
;;
37)
addvless
;;
38)
delvless
;;
39)
renewvless
;;
40)
cekvless
;;
41)
addtrojan
;;
42)
deltrojan
;;
43)
renewtrojan
;;
44)
cektrojan
;;
45)
addtrgo
;;
46)
deltrgo
;;
47)
renewtrgo
;;
48)
cektrgo
;;
49)
addhost
;;
50)
changeport
;;
51)
autobackup
;;
52)
backup
;;
53)
restore
;;
54)
wbmn
;;
55)
limitspeed
;;
56)
ram
;;
57)
reboot
;;
58)
speedtest
;;
59)
info
;;
60)
about
;;
*)
clear
menu
;;
esac
