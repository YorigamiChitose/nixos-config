{config, pkgs, ...}:
{
  imports = [
    ./git.nix
    ./fcitx5.nix
    ./zsh.nix
  ];

  home.packages = with pkgs;[
    neofetch
    tree
    btop
    zed-editor
    microsoft-edge
    vscode
  ];
}