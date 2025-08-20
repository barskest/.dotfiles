# {
#   description = "My modular NixOs config";

#   inputs = {
#     nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
#   };

#   outputs = { self, nixpkgs }: let
#     host_name = "nixos";
#   in {
#     nixosConfigurations.${host_name} = nixpkgs.lib.nixosSystem {
#       system = "x86_64-linux";
#       modules = [
#         ./system/core.nix
#         ./system/hardware-configuration.nix
#       	./system/environment_variables.nix
#         ./system/desktop_environment.nix
#         ./system/packages.nix
#         ./system/fonts.nix
#         ./users/peter.nix
#         ./system/nvidia.nix
#       ];
#     };
#   };
# }
#
#
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
          ./system/core.nix
          ./system/hardware-configuration.nix
          ./system/environment_variables.nix
          ./system/desktop_environment.nix
          ./system/packages.nix
          ./system/fonts.nix
          ./users/peter.nix
          ./system/nvidia.nix
        ];
      };

      # later you can add:
      # desktop = nixpkgs.lib.nixosSystem {
      #   system = "x86_64-linux";
      #   modules = [
      #     ./system/core.nix
      #     ./system/hardware-configuration-desktop.nix
      #     ./users/peter.nix
      #     ./system/nvidia.nix
      #   ];
      # };
    };
  };
}

