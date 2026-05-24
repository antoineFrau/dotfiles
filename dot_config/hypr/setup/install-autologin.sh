#!/usr/bin/bash
set -euo pipefail
sudo mkdir -p /etc/systemd/system/getty@tty1.service.d
sudo cp "$HOME/.config/hypr/setup/getty-tty1-autologin.conf" \
    /etc/systemd/system/getty@tty1.service.d/autologin.conf
sudo systemctl daemon-reload
sudo systemctl restart getty@tty1
echo "tty1 autologin enabled for $USER"
