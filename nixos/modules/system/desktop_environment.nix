{ config, pkgs, ... }:
{
  # Enable niri compositor
  programs.niri.enable = true;

  # Display manager (SDDM)
  services.displayManager = {
    sddm.wayland.enable = true;
    defaultSession = "niri";
    sddm.enable = true;
  };

  services.udisks2.enable = true;
  services.udisks2.mountOnMedia = true;
  services.gvfs.enable = true;
  services.devmon.enable = true;
  
  
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  xdg.portal.enable = true;
  xdg.portal.extraPortals = with pkgs; [
    xdg-desktop-portal-wlr
    xdg-desktop-portal-gtk
  ];
  xdg.portal.config.common.default = [ "gtk" ];
  
  environment.systemPackages = with pkgs; [
    freerdp
    wpaperd
    # unstable.ironbar
    # waybar
  ];

  virtualisation.docker.enable = true;
}


