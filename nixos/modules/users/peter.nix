{ config, pkgs, ... }:

{
  users.users.peter = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };
}

