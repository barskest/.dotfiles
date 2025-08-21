{
  description = "My modular NixOS config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
  };

  outputs = { self, nixpkgs }: {
    nixosConfigurations = {
      laptop = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/laptop/configuration.nix
          ./users/peter.nix
        ];
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

