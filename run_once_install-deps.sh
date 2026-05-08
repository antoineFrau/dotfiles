#!/usr/bin/env bash
# Bootstrap script: install Arch packages and dots-hyprland
# Run once when applying dotfiles to a new machine

set -e

echo "Installing Arch packages..."
sudo pacman -S --needed --noconfirm \
  hyprland \
  foot \
  fish \
  starship \
  quickshell \
  zen-browser \
  kitty \
  dolphin \
  plasma-systemmonitor \
  pavucontrol-qt \
  kcmshell6 \
  git \
  nvim \
  curl

echo "Installing dots-hyprland (illogical-impulse)..."
bash <(curl -s https://ii.clsty.link/get)

echo "Bootstrap complete. Log out and log back in to start Hyprland."
