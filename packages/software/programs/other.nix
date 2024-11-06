{ config, pkgs, ... }:

{

  # Enable Firefox
  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [
    # Browsing
    brave

    # Social
    discord

    # Packaging
    flatpak
    gnome-software

    # Dumb Stuff
    fastfetch

    # Dotfiles
    stow

    # MX Master 3
    solaar

    haguichi
    logmein-hamachi

    libnotify
    btop
  ];
}
