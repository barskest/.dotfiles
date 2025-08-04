{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    helix
    rust
    alacritty
    foot
    git
    brave
    tree
    curl
    yazi
  ];
}
