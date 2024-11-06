{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # GTK
    nwg-look
    gnome-tweaks

    # Fonts
    roboto
  ];
}
