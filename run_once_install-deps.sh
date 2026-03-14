#!/usr/bin/env bash
# Bootstrap script: install Arch packages and dots-hyprland (illogical-impulse)
# Run once on a new machine after chezmoi apply

set -e

echo "Installing Arch packages..."
sudo pacman -S --needed --noconfirm \
  hyprland \
  foot \
  fish \
  starship \
  quickshell \
  nvidia \
  || true  # nvidia optional

echo "Installing dots-hyprland (illogical-impulse)..."
bash <(curl -s https://ii.clsty.link/get)

echo "Bootstrap complete. Log out and select Hyprland to start."
