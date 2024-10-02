# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "mulaney";
  networking.networkmanager.enable = true;
  time.timeZone = "America/Los_Angeles";
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # enable flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  users.motd = ''
            ░▒▓▓▓▒░                            ▒▒▒▒▒░                    ▒▓▓▓▓▒
             ▒▓▓▓▓▒                            ░▒▒▒▒░                   ░▒▓▓▓▓▒
             ░▓▓▓▓▒░                           ░▒▒▒▒░                    ▒▓▓▓▒░
              ▒▓▓▓▒░                                ░                    ▒▓▓▓▒▒
              ▒▓▓▓▓▒                           ░▒ ▒▒░                    ▒▓▓▓▒░
              ░▒▓▓▓▒░                          ░▒ ▒▒░                    ▒▓▓▓▒░
               ▒▓▓▓▓▒                          ░▒ ▒▒░                   ░▒▓▓▓▒░
               ░▓▓▓▓▒░                         ░▒▒▒▒░                   ░▒▓▓▓▒░
                ▒▓▓▓▒░                         ░▒▒▒▒░                   ░▒▓▓▓▒░
                ▒▓▓▓▓▒░                        ░▒▒▒▒░                   ░▒▓▓▓▒░
                ░▒▓▓▓▒░                                                 ░▒▓▓▓▒
                 ▒▓▓▓▓▒░                                                ░▒▓▓▓▒
                 ░▒▓▓▓▒░                                                ░▒▓▓▓▒
                  ▒▓▓▓▓▒                                                ░▒▓▓▓▒
                  ░▒▓▓▓▒░                   ░░░░░░░░░░░░░░░░            ░▓▓▓▓▒
                   ▒▓▓▓▓▒        ░        ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░         ░▓▓▓▓▒
                   ▒▓▓▓▓▒░               ░▒▒▒▒▒▒▓▒▒▒▒▒▒▒▒▒▒▒▒▒          ░▓▓▓▓▒
                    ▒▓▓▓▒░               ░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░         ▒▓▓▓▓▒
                    ▒▓▓▓▓▒              ░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░         ▒▓▓▓▓▒                     ░
                    ░▒▓▓▓▒░              ░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░            ▒▓▓▓▓▒                     ▒
                     ▒▓▓▓▓▒             ░▒▒▒░░▒▒▒░░░░▒▒▒▒░░ ░▒░         ▒▓▓▓▓▒                     ▒
                     ░▓▓▓▓▒░            ░▒▒▒▒▒ ░  ░░▒▒▒▒▒▒▒▒░░░░░░      ▒▓▓▓▓░                    ░▒
                      ▒▓▓▓▒░     ░  ▒▒▒ ░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░       ▒▓▓▓▒░                    ▒▓
                      ▒▓▓▓▓▒     ░▒▒▒▒▒▒░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░       ▒▓▓▓▒░                   ░▒▓
░                     ░▒▓▓▓▒░     ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░▒▒▒░░        ▒▓▓▓▒░                   ▒▓▓
▒░                     ▒▓▓▓▓▒       ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░▒░▒▒░░        ▒▓▓▓▒░                  ░▒▓▓
▓▒                     ░▓▓▓▓▒░       ░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░         ▒▓▓▓▒░                  ░▒▓▓
▓▓▒                     ▒▓▓▓▒░          ░▒▒▒▒▒▒▒▒▒▒▒░░     ░░░░        ░▒▓▓▓▒                   ▒▓▓▓
▓▓▒▒                    ▒▓▓▓▓▒           ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░         ░▒▓▓▓▒                  ░▒▓▓▓
▓▓▓▒░                   ░▒▓▓▓▒░          ▒▒░▒▒▒▒▒▒▒▒░▒▒▒▒▒░░░░         ░▒▓▓▓▒                  ▒▓▓▓▓
▓▓▓▓▒░                   ▒▓▓▓▓▒         ░▒▒▒▒░▒▒▒▒▒▒░▒▓▓▒▒▒▒░          ░▒▓▓▓▒                  ▒▓▓▓▒
▒▓▓▓▓▒                   ░▓▓▓▓▒░        ▓▒▒▒▒▒▒▒░░░▒░    ░░░░▒         ░▒▓▓▓▒                 ░▓▓▓▓▒
 ▒▓▓▓▓▒                  ░▒▓▓▓▒░       ▒▓▓▒▒▒▒▒▒▒▒░░      ░░░▒         ░▓▓▓▓▒                 ▒▓▓▓▓░
  ▒▓▓▓▒░                  ▒▓▓▓▓▒       ▒▓▓▓▓▓▒▒▒▒▒▒▒░     ░░▒▒         ░▓▓▓▓▒                ░▒▓▓▓▒░
  ░▒▓▓▓▒░                 ░▒▓▓▓▒░      ▒▓▓▓▓▓▓▓▓▓▒▒▒▒     ▒▒▒▒▒             ░                ▒▓▓▓▓▒
   ▒▓▓▓▓▒                  ▒▓▓          ▒▓▓▓▓▓▓▓▓▓▓░▒       ▒▒▒                             ░▒▓▓▓▒░
    ▒▓▓▓▓▒                               ▒▓▓▓▓▓▓▓   ▒░░     ░ ▒▒                            ░▓▓▓▓▒
     ▒▓▓▓▓▒                               ▓▓▓▓▓░░▒▒▓▒▒▒▒▒▒▒▓▒▓▒░                            ▒▓▓▓▓░
     ░▒▓▓▓▒░                               ▓▓░░▓▓▓▒▒▒▒▓▓▓▒▒▒▓▓▓▒░                           ▒▓▓▓▒░
      ░▓▓▓▓▒░                               ▒▓▓▓▓▒▒▒▓▓▒▒▒▒▓▒▓▓▓▒▒                              ▒▒
       ▒▓▓▓▒                                 ▓▓▓▒▓▓▓▓▒▒▒▒▒▒▒▒▓▓▓▒▒
        ▒▓                                   ░▓▒▒▓▓▒▒▒▒▒▒▒▒ ░▓▓▓▒▒
         ░                                    ▒▒▒▓▓▒▓▒▒▒▒▒▒  ▒▓▓▓▒░
                                              ▒▒▒▒▒▒▒▒░▒▒▒▒  ▒▓▓▓▒░
                                              ▒▒▒▒▒▒▒░ ░▒▒   ░▒▓▒▒▒
                                              ▒▒▒▓▒▒▒░░░░     ▒▒▒▒▒
                                             ▒▒▒▒▒▒▒▒ ▒▒      ▒▒▒▒▒              ▒▓▓▓▓
                                             ▒▒▒▒▒▒▒▒ ▒       ▒▒▒▒▒░          ▓▓▓▓▒
                                           ▓▒▓▓▒▒▒▒▒░▒        ░▒▒▒▒▒
    ░░░░░                                 ▓▓▒▒▒▒▒▒░░ ▓         ▒▒▒▒▒
     ▒▓▓▒                                ░▓▓▓▓▒▒▒░▒░░▓         ▒▒▒▒▒
    ░▓▓▓▓                                 ▓▓▓▓▓▓▒▒▒  ▒░        ▒▒▒▒▒
      ░▓▒▒                                 ▒▓▓▓▓▓▓░   ░        ▒▒▒▒░
                                            ░▒▓▒▒▒             ░▒▒▒
                                              ▒▒▒               ▒▒░
                                                                ░▒░
                                                                ░░
                                                                ░▒░
                                                                ░░
          ▒▒▒ ▓▒▒▒▒▓▒ ▓▒░  ▒▒ ▒▒▓  ▒▒░    ▓▒▓▒   ░▒▒▒  ▒▒  ▓▒▒ ▒▒░     ░▒▒▒▒   ▒▒▒ ░▒▒ ▒▓▓▒▒▒ ░▒▓░░▓
          ▒▒▓ ▒▒   ▓▒ ▓▒░  ▒▒ ▒▒▒▓ ▒▒░    ▓▒▒▒   ▓▒▒▒  ▒▒  ▓▒▒ ▒▒░     ▓▓▒▒▓   ▓▒▒ ░▒▒ ▒▒░     ▒▒░░▒
          ▒▒▓ ▒▒   ▓▒ ▓▒░  ▒▒ ▒▒▓▓ ▒▒░    ▓▒▒▒▓  ▓▒▒▒  ▒▒  ▓▒▒ ▒▒      ▒▒░▒▒   ▒▒▒▓░▒▒ ▒▒░     ▒▓░▒▓
          ▒▒▓ ▒▒   ▓▒ ▒▒▒▒▒▒▓ ▒▒▒▒▓▒▒░    ▓▒░▓▒ ▒▒▒▒▒  ▓▓  ▓▒▒ ▒▒      ▒▓ ▓▒▒  ▒▒▓▒░▒▒ ▒▒▒▒▒    ▒▒▒▓
          ▒▒▓ ▒▒   ▓▒ ▓▒▒░░▒▒ ▒▒▓▓▒▒▓░    ▓▒░▓▒ ▒▓ ▒▒  ▒▒  ▓▒▒ ▒▒      ▓▒ ▒▒▒  ▒▒ ▒▒▒▒ ▒▒░░░    ▒▒▓
      ▒▒  ▒▒▓ ▒▒   ▒▒ ▓▒░  ▒▓ ▒▒▓ ▒▒▓░    ▓▒░ ▒▒▒▒ ▒▒ ░▒▒  ▓▒▒ ▒▒     ▒▓▒▒▓▒▓  ▒▒ ▓▒▒▒ ▒▒░       ▒▒
      ▒▒  ▓▓▒ ▒▒  ░▓▒ ▓▒░  ▒▒ ▒▒▓ ▓▒▒░    ▓▒░ ▒▒▒░ ▒▒ ░▒▒  ▒▒▒ ▒▒     ▓▒▒  ▒▒  ▓▒  ▒▒▒ ▒▒░       ▒▒
      ▒▒▒▒▒▓   ▒▒▒▓▒  ▓▓░  ▒▒ ▒▒▓  ▒▒░    ▓▒░ ▒▒▒  ▒▒  ▓▓▓▒▓▓  ▒▒▒▒▒▒ ▒▒   ▓▒▒ ▒▒  ▓▓▒ ▒▒▒▒▒▒    ▒▒

         ▒▓▒▓ ▓░▓▓▓▓  ▓▓▓▓░▓▓▓ ▓▓▓▓▓▓▓▓ ▓▓▓ ▓▓▓░▓▒▓▓▓▓▓▓       ░░   ░   ░  ░  ░         ░ ░░░░  ░
         ▒▓▓▓ ▓░▓░▓▓  ▓▓ ░▒▓ ▓░▓░▓▓▓▓ ░ ▓  ░▓ ▓▒▓▒▓▓░▓     ▓▓  ▓   ▓ ▓ ▓▒░░▒░▒▓░▓░▓  ▓ ▓▓  ▓  ▓▓
'';

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.admin = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" ];
  };

  users.users.atalii = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  users.users.max = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    openssh.authorizedKeys.keys = [ "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINmdKg6WzEiyKysklc3YAKLjHEDLZq4RAjRYlSVbwHs9 max" ];
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs;
    [ git vim fastfetch dust bat tree typos eza
      gnumake wget clang gcc python3 ];

  services.tailscale = {
    enable = true;
    extraUpFlags = [ "--ssh" ];
  };

  # we need this so that we can nixos-rebuild from a script.
  security.sudo.wheelNeedsPassword = false;
  services.cron = {
    enable = true;
    systemCronJobs = [
      "* * * * *      root	rm -rf /root/net; git clone https://github.com/B4TB/net /root/net && nixos-rebuild switch --flake /root/net"
    ];
  };

  services.openssh.enable = true;

  system.stateVersion = "24.05";
}
