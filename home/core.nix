{ config, pkgs, ... }:

{
  imports = [
    ./pkgs/default.nix
  ];

  home.username = "yori";
  home.homeDirectory = "/home/yori";

  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
}