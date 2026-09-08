#!/usr/bin/env bash
set -euo pipefail

CONF_SRC="${HOME}/.config/hypr/setup/getty-tty1-autologin.conf"
DEST="/etc/systemd/system/getty@tty1.service.d/autologin.conf"

[[ -f "$CONF_SRC" ]] || {
  echo "missing $CONF_SRC" >&2
  exit 1
}

if [[ -f "$DEST" ]] && cmp -s "$CONF_SRC" "$DEST"; then
  exit 0
fi

sudo mkdir -p /etc/systemd/system/getty@tty1.service.d
sudo cp "$CONF_SRC" "$DEST"
sudo systemctl daemon-reload
sudo systemctl restart getty@tty1
echo "tty1 autologin enabled for ${USER}"
