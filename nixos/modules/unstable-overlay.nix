# modules/unstable-overlay.nix
{ config, inputs, ... }:
{
  nixpkgs.overlays = [
    (final: prev: {
      unstable = import inputs.nixpkgs-unstable {
        system = config.nixpkgs.system;
        config.allowUnfree = true;
      };
    })
  ];
}
