#!/bin/bash
set -e
sudo apt-get update
sudo apt-get install sl -y
for rc in "$HOME/.bashrc" "$HOME/.zshrc"; do
  if ! grep -q '/usr/games' "$rc" 2>/dev/null; then
    printf '\nexport PATH="$PATH:/usr/games"\n' >> "$rc"
  fi
done
