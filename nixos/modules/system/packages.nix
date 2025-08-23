{ config, pkgs, pkgs-unstable, ... }:


let
  unstable = import pkgs-unstable {
    system = pkgs.system;
  };
in {
  environment.systemPackages = with pkgs; [
  # Stable
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
  # Unstable 
      # blend
  ] ++ [
    unstable.blender
  ];
}
