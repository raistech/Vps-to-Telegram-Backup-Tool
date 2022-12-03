#!/usr/bin/env bash

cd /etc
https://github.com/lahirubro123/Vps-to-Telegram-Backup-Tool.git
chmod +x /etc/Vps-to-Telegram-Backup-Tool/backup.sh
(crontab -l; echo "0 */12 * * * sudo bash /etc/Vps-to-Telegram-Backup-Tool/backup.sh") | sort -u | crontab -
