{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # include winapps and the optional launcher here
    pkgs.winapps.packages.x86_64-linux.winapps
    pkgs.winapps.packages.x86_64-linux.winapps-launcher
  ];
}
