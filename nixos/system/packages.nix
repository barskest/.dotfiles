{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    helix
    alacritty
    foot
    git
    brave
    tree
    curl
    yazi
  ];
}
