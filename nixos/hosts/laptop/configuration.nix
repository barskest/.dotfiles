{ config, pkgs, ... }:

{
  imports = [
    ./nixos_version.nix
    ./host_name.nix
  ];
}
