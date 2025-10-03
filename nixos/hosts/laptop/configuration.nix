{ config, pkgs, ... }:

{
  imports = [
      /etc/nixos/hardware-configuration.nix
      ./nixos_version.nix
      ./host_name.nix
      ./nvidia.nix
      ../../modules
    ];
}
