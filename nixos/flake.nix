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
{
  description = "My modular NixOS config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
  };

  outputs = { self, nixpkgs }: let
    system = "x86_64-linux";
    host_name = "nixos";

    overlays = [
      (final: prev: {
        ironbar = prev.rustPlatform.buildRustPackage rec {
          pname = "ironbar";
          version = "git-main";

          src = prev.fetchFromGitHub {
            owner = "JakeStanger";
            repo = "ironbar";
            rev = "main"; # ⚠️ better to pin a commit hash
            sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
          };

          cargoSha256 = "sha256-BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB=";

          buildInputs = [ prev.libnm ]; # needed for network_manager feature
        };
      })
    ];
  in {
    nixosConfigurations.${host_name} = nixpkgs.lib.nixosSystem {
      inherit system;
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

      pkgs = import nixpkgs {
        inherit system overlays;
      };
    };
  };
}
