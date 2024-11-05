{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # ======================================================================= #
    #  Programming
    # ======================================================================= #

    # IDEs
    neovim
    vscode
    jetbrains-toolbox

    # Languages
    rustup
    nixpkgs-fmt
    jdk17
    jdk
    python3

    # General
    git
    android-tools




    # ======================================================================= #
    #  Look and Feel
    # ======================================================================= #

    # GTK
    nwg-look
    gnome.gnome-tweaks

    # Fonts
    roboto




    # ======================================================================= #
    #  Hyprland
    # ======================================================================= #
    hyprland
    hyprlock
    hyprshot
    hypridle
    hyprshade
    waybar
    rofi
    wl-clipboard
    blueman
    networkmanager
    networkmanagerapplet
    mako
    pamixer
    playerctl
    pavucontrol
    swww
    polkit_gnome



    # ======================================================================= #
    #  Terminal
    # ======================================================================= #

    # Shell
    fish
    starship

    # Terminal Emulators
    wezterm




    # ======================================================================= #
    #  Media
    # ======================================================================= #

    # Audio

    # Movies/Cinema/Anime
    vlc
    ani-cli
    stremio
    miru

    # Images
    imagemagick
    gimp
    inkscape



    # ======================================================================= #
    #  Gaming
    # ======================================================================= #

    # Gaming
    steam
    bottles

    # Games
    prismlauncher


    # ======================================================================= #
    #  Others
    # ======================================================================= #

    # Browsing
    brave

    # Social
    discord

    # Packaging
    flatpak
    gnome.gnome-software

    # Dumb Stuff
    fastfetch

    # Dotfiles
    stow

    # Max Master
    solaar

    haguichi
    logmein-hamachi
  ];
}
