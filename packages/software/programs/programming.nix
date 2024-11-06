{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
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
  ];
}
