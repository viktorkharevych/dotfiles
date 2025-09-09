#!/usr/bin/env bash
set -euo pipefail

echo "[*] Installing GNU Stow + common tools on Ubuntu..."
sudo apt update -y
sudo apt install -y stow htop btop tldr
echo "[✓] Done. Versions:"
echo "    Stow: $(stow --version | head -n1)"
echo "    htop: $(htop --version | head -n1 || echo 'not found')"
echo "    btop: $(btop --version | head -n1 || echo 'not found')"
echo "    tldr: $(tldr --version | head -n1 || echo 'not found')"

# --- Stow configs ---
cd "$HOME/dotfiles"

# i3 + i3status
stow i3
echo "[✓] Linked i3 + i3status configs"

# aliases
stow aliases
echo "[✓] Linked aliases"

# bash (.bashrc)
stow bash
echo "[✓] Linked bash config"
