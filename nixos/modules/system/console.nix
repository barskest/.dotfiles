{ config, libs, pkgs, ... }:

{
  time.timeZone = "Europe/Oslo";
  console = {
  #   font = "Lat2-Terminus16";
    keyMap = "no";
  #   useXkbConfig = true; # use xkb.options in tty.
  };
}
