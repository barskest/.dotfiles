#!/usr/bin/env bash

SCRIPT_DIR="$(dirname "$(realpath "$0")")"
CONFIG_DIR="$HOME/.config"
shopt -s nullglob

dirs=("$SCRIPT_DIR"/*/)

for d in "${dirs[@]}"; do
  name="$(basename "$d")"
  target="$CONFIG_DIR/$name"
  echo "Linking $d -> $target"
  [ -e "$target" ] && rm -rf "$target"
  ln -sf "$d" "$target"
done
