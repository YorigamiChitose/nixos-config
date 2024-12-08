{config, pkgs,...}:
{
  imports = [
    ../../home/core.nix
    ./pkgs/git.nix
  ];
}