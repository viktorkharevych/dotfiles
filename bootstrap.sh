#!/usr/bin/env bash
set -euo pipefail

echo "[*] Installing GNU Stow on Ubuntu..."
sudo apt update -y
sudo apt install -y stow
echo "[✓] Done. Version: $(stow --version | head -n1)"

# --- Stow i3 and i3status configs ---
cd "$HOME/dotfiles"
stow i3
echo "[✓] Linked i3 + i3status configs"
