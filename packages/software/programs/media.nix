{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
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
  ];
}
