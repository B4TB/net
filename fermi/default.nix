{ pkgs, ... }:

let
  fermi = pkgs.callPackage ./package.nix {};
in
{
  config = {
    systemd.services.fermi = {
      description = "Fermi Estimation Challenge";
      wantedBy = [ "multi-user.target" ];
      serviceConfig = {
        Type = "simple";
        ExecStart = "${pkgs.socat}/bin/socat TCP-LISTEN:1337,reuseaddr,fork EXEC:${fermi}/bin/fermi";
      };
    };
  };
}