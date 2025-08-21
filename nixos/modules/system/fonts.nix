{ config, pkgs, ... }:
{
  fonts = {
    enableDefaultPackages = true;

    fontconfig = {
      enable = true;
      hinting.enable = true;
      hinting.style = "full";
      antialias = true;
      subpixel.rgba = "rgb";
    };

    packages = with pkgs; [
      nerd-fonts.hack
    ];
  };
}

