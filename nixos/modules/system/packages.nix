{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    btop
    helix
    rustup
    gcc
    alacritty
    git
    brave
    tree
    curl
    yazi
    blender
  ];

}
