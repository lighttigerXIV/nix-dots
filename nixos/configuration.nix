{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  security.rtkit.enable = true;

  users.users.lighttigerxiv = {
    isNormalUser = true;
    description = "lighttigerXIV";
    extraGroups = [ "networkmanager" "wheel" ];
  };  

  environment.sessionVariables = {
    OZONE_PLATFORM = "wayland";
    GDK_BACKEND = "wayland";
    NIXOS_OZONE_WL = "1";
    __GL_GSYNC_ALLOWED = "0";
    __GL_VRR_ALLOWED = "0";
    WLR_NO_HARDWARE_CURSORS = "1";
  };

  system.stateVersion = "24.05";
}
