{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # Shell
    fish
    starship

    # Terminal Emulators
    wezterm
  ];
}
