{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # nvidia-smi
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
