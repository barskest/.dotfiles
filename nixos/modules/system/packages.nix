{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    btop
    helix
    alacritty
    git
    brave
    tree
    curl
    yazi
    wl-clipboard
  ];
}
