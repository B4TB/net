{
  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.tcp-games.url = "github:B4TB/tcp-games";
  inputs.ttds.url = "github:atalii/ttds";
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";

  outputs = { self, nixpkgs, flake-utils, tcp-games, ttds }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system}; in
      {
        packages.mulaney = self.nixosConfigurations.mulaney.config.system.build.vm;
      }) // {
        # named mulaney because numerous crimes were involved but no one seems to
        # care.
        nixosConfigurations.mulaney = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./configuration.nix
            ./hardware-configuration.nix

            tcp-games.nixosModules.nim
            tcp-games.nixosModules.fermi
            tcp-games.nixosModules.images
            ttds.nixosModules.everything
          ];
        };
      };
}
