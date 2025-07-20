#!/bin/bash

BOT_TOKEN="7003429979:AAFVBpkPKJY0m9wzn8ZshQgvmuAJj9Pxh3g"
CHAT_ID="6971857356"

BACKUP_FILE="/root/user-backup.txt"
XRAY_CONF="/etc/xray/config.json"

echo "🗂 Daftar User Xray" > $BACKUP_FILE

echo -e "\n🔐 Trojan Users:" >> $BACKUP_FILE
grep -oP '(?<=#trojan\s)[^\s]+' "$XRAY_CONF" >> $BACKUP_FILE || echo "Tidak ada." >> $BACKUP_FILE

echo -e "\n⚡️ VLESS Users:" >> $BACKUP_FILE
grep -oP '(?<=#vless\s)[^\s]+' "$XRAY_CONF" >> $BACKUP_FILE || echo "Tidak ada." >> $BACKUP_FILE

echo -e "\n🔸 VMess Users:" >> $BACKUP_FILE
grep -oP '(?<=#vmess\s)[^\s]+' "$XRAY_CONF" >> $BACKUP_FILE || echo "Tidak ada." >> $BACKUP_FILE

# Kirim ke Telegram
curl -F document=@"$BACKUP_FILE" "https://api.telegram.org/bot$BOT_TOKEN/sendDocument" \
     -F chat_id="$CHAT_ID" \
     -F caption="✅ Backup daftar user Xray berhasil dikirim."