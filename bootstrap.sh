#!/usr/bin/env bash
set -euo pipefail

echo "[*] Installing GNU Stow on Ubuntu..."
sudo apt update -y
sudo apt install -y stow
echo "[✓] Done. Version: $(stow --version | head -n1)"

# --- Stow configs ---
cd "$HOME/dotfiles"

# i3 + i3status
stow i3
echo "[✓] Linked i3 + i3status configs"

# aliases
stow aliases
echo "[✓] Linked aliases"
