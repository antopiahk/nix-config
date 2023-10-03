
{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader. https://nixos.wiki/wiki/Dual_Booting_NixOS_and_Windows
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.supportedFilesystems = ["ntfs"];
  networking.hostName = "desktop"; # Define your hostname.
 }
