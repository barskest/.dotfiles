{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    helix
    rustc
    cargo
    alacritty
    foot
    git
    brave
    tree
    curl
    yazi
  ];
}
