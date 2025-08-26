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
    # gcc
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
    unstable.rustup
    unstable.cargo
  ];
}
