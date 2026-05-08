# Dotfiles – Arch Linux + Hyprland

Minimal dotfiles for replicating an Arch Linux + Hyprland setup on another machine. Built on [dots-hyprland](https://github.com/end-4/dots-hyprland) (illogical-impulse).

## Prerequisites

- Arch Linux (or compatible)
- [Chezmoi](https://www.chezmoi.io/) (`yay -S chezmoi` or `pacman -S chezmoi`)

## Quick Start (New Machine)

```bash
# Install chezmoi, then:
chezmoi init --apply https://github.com/zenocode-org/dotfiles.git
```

This will:

1. Clone the dotfiles to `~/.local/share/chezmoi`
2. Apply all configs to your home directory
3. Run the bootstrap script once (installs Arch packages + dots-hyprland)

## Machine-Specific Configuration

For SSH aliases in `.zshrc`, set these environment variables before applying (or edit `~/.config/chezmoi/chezmoi.toml` after the first apply):

```bash
export CHEZMOI_SSH_KEY_PATH="~/path/to/your/key.pem"
export CHEZMOI_SSH_HOST_LF="ec2-user@your-ec2-host"
export CHEZMOI_SSH_HOST_BENCH="ec2-user@your-bench-host"
chezmoi init --apply https://github.com/zenocode-org/dotfiles.git
```

## What's Included

- **Hyprland**: `~/.config/hypr/` (custom keybinds, execs, monitors, workspaces)
- **illogical-impulse**: Quickshell/shell config
- **Shell**: `.zshrc`, `.bashrc`, `~/.config/zshrc.d/`
- **Starship**: prompt config
- **Foot**: terminal config
- **Git**: `.gitconfig`

## What's NOT Included (Secrets)

Never commit: `.env`, `*.pem`, `~/.aws/`, `~/.ssh/`, `~/.gnupg/`, or any tokens.

## Local Development

If you're editing these dotfiles locally:

```bash
cd ~/Documents/dotfiles  # or wherever you cloned
chezmoi --source . apply
```

To verify before applying:

```bash
chezmoi --source . diff
```
