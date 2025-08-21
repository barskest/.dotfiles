{ config, pkgs, ... }:

{
  imports =
    (builtins.attrValues (import ../modules))
    ++ [
      ./hardware-configuration.nix
      ./nixos_version.nix
      ./host_name.nix
    ];
}
