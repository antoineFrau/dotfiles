# Auto start Hyprland on tty1 (source from .zshrc when zsh is the login shell)
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec Hyprland
fi
