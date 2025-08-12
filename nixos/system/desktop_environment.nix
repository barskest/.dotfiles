{ config, pkgs, ... }:

{
  # Enable niri compositor
  programs.niri.enable = true;

  # Display manager (SDDM)
  services.displayManager = {
    defaultSession = "niri";
    sddm.enable = true;
    sddm.wayland.enable = true;
  };

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  xdg.portal.enable = true;
  xdg.portal.extraPortals = with pkgs; [
    xdg-desktop-portal-wlr
    xdg-desktop-portal-gtk
  ];
  xdg.portal.config.common.default = [ "gtk" ];
}
