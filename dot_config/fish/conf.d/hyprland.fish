# Auto-start Hyprland on tty1 (only when fish is the login shell: chsh -s /usr/bin/fish)
if test -z "$DISPLAY"; and test "$XDG_VTNR" = 1
    exec Hyprland
end
