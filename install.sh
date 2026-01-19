#!/usr/bin/env bash

set -euo pipefail

echo "Installing Asimwe's Hyprland Blue Rice..."
echo "This will copy configs to ~/.config/ and home files. Backup existing configs first!"

read -p "Continue? (y/N): " confirm
if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
    echo "Installation cancelled."
    exit 1
fi

# Backup existing configs (optional but safe)
mkdir -p ~/.config/backup-hypr-rice
cp -r ~/.config/hypr ~/.config/backup-hypr-rice/ 2>/dev/null || true
cp -r ~/.config/waybar ~/.config/backup-hypr-rice/ 2>/dev/null || true
cp -r ~/.config/nwg-dock-hyprland ~/.config/backup-hypr-rice/ 2>/dev/null || true
cp -r ~/.config/wofi ~/.config/backup-hypr-rice/ 2>/dev/null || true
cp -r ~/.config/kitty ~/.config/backup-hypr-rice/ 2>/dev/null || true
cp -r ~/.config/mako ~/.config/backup-hypr-rice/ 2>/dev/null || true
cp -r ~/.config/rofi ~/.config/backup-hypr-rice/ 2>/dev/null || true
cp ~/.zshrc ~/.config/backup-hypr-rice/zshrc.bak 2>/dev/null || true
cp ~/.zprofile ~/.config/backup-hypr-rice/zprofile.bak 2>/dev/null || true

# Copy configs
cp -r hypr ~/.config/
cp -r waybar ~/.config/
cp -r nwg-dock-hyprland ~/.config/
cp -r wofi ~/.config/
cp -r kitty ~/.config/
cp -r mako ~/.config/
cp -r rofi ~/.config/
cp -r swaylock ~/.config/

cp .zshrc ~/
cp .zprofile ~/
# cp .p10k.zsh ~/   # Uncomment if you have it

# Copy wallpaper example
mkdir -p ~/Pictures/wallpapers
cp wallpapers/wall2.png ~/Pictures/wallpapers/ 2>/dev/null || true

echo "Configs copied! Reload Hyprland or reboot."
echo "Run: hyprctl reload"
echo "Done! Enjoy the blue rice 🚀"
