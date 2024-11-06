{ config, ... }:

{
  # Enable x11
  services.xserver.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Enable Flatpak
  services.flatpak.enable = true;

  # Enable Printing
  services.printing.enable = true;

  # Enable Haguichi
  services.logmein-hamachi.enable = true;
  programs.haguichi.enable = true;
}