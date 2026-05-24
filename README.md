# Dotfiles (Arch Linux + Hyprland)

Managed with [chezmoi](https://www.chezmoi.io/). Based on [dots-hyprland](https://github.com/end-4/dots-hyprland) (illogical-impulse).

## Bootstrap on a new machine

1. Install chezmoi:
   ```bash
   sudo pacman -S chezmoi
   ```

2. Apply dotfiles:
   ```bash
   chezmoi init --apply https://github.com/zenocode-org/dotfiles.git
   ```

3. Before first apply, edit machine-specific values. Copy the template and edit:
   ```bash
   cp ~/.local/share/chezmoi/.chezmoi.toml.tmpl ~/.config/chezmoi/.chezmoi.toml
   $EDITOR ~/.config/chezmoi/.chezmoi.toml
   ```
   Set `ssh_key_path`, `ssh_host_lf`, `ssh_host_bench` for SSH aliases in `.zshrc`.

4. Run the bootstrap script (installs packages + dots-hyprland):
   ```bash
   ~/.local/share/chezmoi/run_once_install-deps.sh
   ```

5. Enable passwordless tty1 login (requires sudo once, then reboot):
   ```bash
   ~/.config/hypr/setup/install-autologin.sh
   ```

## Boot flow (no display manager)

```text
Boot → auto-login tty1 → bash (.bash_profile) → Hyprland → hyprlock
```

- **Systemd autologin:** `~/.config/hypr/setup/` stages a getty override (username from chezmoi).
- **Hyprland start:** `.bash_profile` execs Hyprland on tty1 when `DISPLAY` is unset.
- **Boot lockscreen:** `custom/execs.lua` runs `hyprlock` at session start; idle lock via `hypridle` is unchanged.

To skip the boot lockscreen, remove the `hyprlock` line from `custom/execs.lua`.

If fish is the login shell (`chsh -s /usr/bin/fish`), Hyprland starts from `~/.config/fish/conf.d/hyprland.fish` instead — remove the block from `.bash_profile`.

## What's included

- Hyprland 0.55 config (Lua): `custom/*.lua`, `hyprland.lua`, `hypridle.conf`, `hyprlock.conf`
- dots-hyprland base (`hyprland/` folder) is installed separately via the bootstrap script
- Shell config (zsh, bash, fish, starship)
- tty1 autologin setup scripts (`hypr/setup/`)
- illogical-impulse (Quickshell) config
- foot terminal config
- zshrc.d scripts

## What's not included (install separately)

- hyprwhspr (voice dictation)
- dots-hyprland base (run the installer in the bootstrap script)

## Security

Never commit: `.env`, `*.pem`, `.aws/`, `.ssh/`, `.gnupg/`, or files containing tokens.
