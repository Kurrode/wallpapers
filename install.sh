#!/usr/bin/env bash

# Target directory
TARGET_DIR="$HOME/.local/share/wallpapers"

# Ensure the directory exists
mkdir -p "$TARGET_DIR"

echo "Installing wallpapers into $TARGET_DIR..."

# Use rsync to copy everything
# -a: archive mode (preserves folder structure and permissions)
# -v: verbose (shows progress)
# --exclude: keeps the script, readme, and git data out of the destination
rsync -av \
  --exclude='install.sh' \
  --exclude='README.md' \
  --exclude='.git' \
  ./ "$TARGET_DIR/"

echo "Installation complete!"
