{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.tcp-games.url = "github:B4TB/tcp-games";

  outputs = { self, nixpkgs, flake-utils, tcp-games }:
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
            ./testing.nix

            "${nixpkgs}/nixos/modules/virtualisation/qemu-vm.nix"

            tcp-games.nixosModules.nim
            tcp-games.nixosModules.fermi
            tcp-games.nixosModules.images
          ];
        };
      };
}
