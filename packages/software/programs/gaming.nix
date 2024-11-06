{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # Launchers
    bottles
    steam
    prismlauncher
  ];
}
