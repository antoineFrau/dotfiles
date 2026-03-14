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

## What's included

- Hyprland config (custom overrides, monitors, workspaces)
- Shell config (zsh, bash, starship)
- illogical-impulse (Quickshell) config
- foot terminal config
- zshrc.d scripts

## What's not included (install separately)

- hyprwhspr (voice dictation)
- dots-hyprland base (run the installer in the bootstrap script)

## Security

Never commit: `.env`, `*.pem`, `.aws/`, `.ssh/`, `.gnupg/`, or files containing tokens.
