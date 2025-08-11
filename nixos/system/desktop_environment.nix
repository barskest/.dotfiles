{ config, pkgs, ... }:

# {
# 	programs.hyprland.enable = true;

# 	services.displayManager =  {
# 		defaultSession = "hyprland";
# 		sddm = {
# 			enable = true;
# 			wayland.enable = true;
# 		};
# 	};

# 	programs.waybar.enable = true;
# }

{
  # Enable niri compositor
  programs.niri.enable = true;

  # Display manager (SDDM)
  services.displayManager = {
    defaultSession = "niri";
    sddm.enable = true;
    sddm.wayland.enable = true;
  };
}
