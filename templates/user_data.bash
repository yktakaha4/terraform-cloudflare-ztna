#!/bin/bash -eux

# Update packages
yum update -y
sudo yum install yum-cron -y
sudo sed -i "s/^apply_updates.*$/apply_updates = yes/g" /etc/yum/yum-cron.conf
sudo systemctl start yum-cron
sudo systemctl enable yum-cron

# Set timezone
timedatectl status
sudo timedatectl set-timezone Asia/Tokyo

# Set locale
localectl status
sudo localectl set-locale LANG=ja_JP.UTF-8
sudo localectl set-keymap jp106

# Install cloudflared
curl -L --output cloudflared.rpm https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-x86_64.rpm
sudo yum localinstall -y cloudflared.rpm
sudo cloudflared service install "${tunnel_token}"

echo "init complete."
