{ config, pkgs, ... }:

{
	programs.hyprland.enable = true;

	services.displayManager =  {
		defaultSession = "hyprland";
		sddm = {
			enable = true;
			wayland.enable = true;
		};
	};

	programs.waybar.enable = true;
}
