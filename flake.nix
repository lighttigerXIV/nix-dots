{
  description = "A flake for all my packages";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations = {
        lt14-nixos = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./nixos/nixos.nix
            ./packages/packages.nix
          ];
        };
      };
    };
}
