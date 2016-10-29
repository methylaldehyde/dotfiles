# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

let

mkXserver = 
      (import ./xserver.nix) { touchpad = "touchpad";
                               kbLayout = "lv"; };
mkXmonad =
      (import ./xmonad.nix) {};

in

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./wifi.nix
      mkXserver
      mkXmonad
    ];

  # Use the gummiboot efi boot loader.
  boot.kernelPackages = pkgs.linuxPackages_4_7;
  boot.blacklistedKernelModules = [ "nouveau" ];
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  programs = {
    ibus.enable = true;
    ibus.plugins = [ pkgs.ibus-anthy pkgs.mozc ];
  };

  services.cron.enable = true;

  networking.hostName = "theophorus"; # Define your hostname.
  networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  time.timeZone = "Europe/Riga";
  time.hardwareClockInLocalTime = true;

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  users.extraUsers.theo = {
    group = "wheel";
    createHome = true;
    home = "/home/theo";
    shell = "/run/current-system/sw/bin/bash";
    uid = 1000;
  };

  system.stateVersion = "16.03";

}
