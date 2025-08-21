{ config, libs, pkgs, ... }:

{
  services.pipewire = {
    pulse.enable = true;
    enable = true;
  };
}
