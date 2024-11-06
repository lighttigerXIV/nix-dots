{pkgs,...}:{

  # Enable Gnome
  services.xserver.displayManager.gdm.wayland = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Enable Polkit
  security.polkit.enable = true;
  security.pam.services.gdm.enableGnomeKeyring = true;

  # Enable Hyprland
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    # Hyprland Packages
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
  ];
}