#!/usr/bin/env bash
set -e

echo "Rebuilding NixOS from flake..."
sudo nixos-rebuild switch --flake . --impure
