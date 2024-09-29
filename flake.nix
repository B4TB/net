{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";

  inputs.tcp-games.url = "github:B4TB/tcp-games";

  outputs = { self, nixpkgs, tcp-games }: {
    # named mulaney because numerous crimes were involved but no one seems to
    # care.
    nixosConfigurations.mulaney = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
        ./hardware-configuration.nix

        tcp-games.nixosModules.nim
        ./fermi
      ];
    };
  };
}
