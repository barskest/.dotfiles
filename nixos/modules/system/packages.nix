{ config, pkgs, ... }:
{

  nixpkgs.config.allowUnfree = true;
  
  environment.systemPackages = with pkgs; [
    p7zip
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
