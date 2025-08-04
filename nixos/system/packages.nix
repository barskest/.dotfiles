{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    helix
    rustup
    gcc
    alacritty
    foot
    git
    brave
    tree
    curl
    yazi
  ];
}
