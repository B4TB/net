{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";

  outputs = { self, nixpkgs }: {
    # named mulaney because numerous crimes were involved but no one seems to
    # care.
    nixosConfigurations.mulaney = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./configuration.nix ./hardware-configuration.nix ];
    };
  };
}
