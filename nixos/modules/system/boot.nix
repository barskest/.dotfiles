{ config, libs, pkgs, ... }:

{
  boot.kernelParams = [ "nvidia-drm.modeset=1" ];
  boot.loader = {
    efi.canTouchEfiVariables = true;
    systemd-boot.enable = true;
  };
}
