{
  description = "A simple NixOS flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    nixosConfigurations = {
      nixos = let
        username = "yori";
      in
        nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./configuration.nix
            ./users/${username}/default.nix
            home-manager.nixosModules.home-manager
            {
              home-manager = {
                users.yori = import ./users/${username}/home.nix;
                useUserPackages = true;
                useGlobalPkgs = true;
              };
            }
          ];
        };
    };
  };
}