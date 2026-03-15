#!/usr/bin/env bash

# Target directory
TARGET_DIR="$HOME/.local/share/wallpapers"

# Ensure the directory exists
mkdir -p "$TARGET_DIR"

echo "Installing wallpapers to $TARGET_DIR..."

# Loop through all files in the current directory
for file in *; do
  # Skip the installer, the readme, and any directories
  if [[ "$file" != "install.sh" && "$file" != "README.md" && -f "$file" ]]; then
    cp -v "$file" "$TARGET_DIR/"
    echo "Copied: $file"
  fi
done

echo "Done!"
