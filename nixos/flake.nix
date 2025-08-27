{
  description = "My modular NixOS config";

  inputs = {
    # pkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
  };

  outputs = { self, nixpkgs, pkgs-unstable }: {
    nixosConfigurations = {
      laptop = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ ./hosts/laptop/configuration.nix ];
        # specialArgs = { inherit pkgs-unstable; };
      };

      # later you can add:
      # desktop = nixpkgs.lib.nixosSystem {
      #   system = "x86_64-linux";
      #   modules = [
      #   ];
      # };
    };
  };
}

