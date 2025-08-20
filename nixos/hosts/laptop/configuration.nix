{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./nixos_version.nix
    ./host_name.nix
    ./nvidia.nix
  ];
}
