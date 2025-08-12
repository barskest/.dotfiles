{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wpaperd
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
