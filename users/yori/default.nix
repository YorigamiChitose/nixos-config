{config, pkgs,...}:
{
  programs.zsh.enable = true;

  users.users.yori = {
    isNormalUser = true;
    shell = pkgs.zsh;
    description = "yori";
    extraGroups = [ "networkmanager" "wheel"];
    packages = with pkgs; [
    ];
  };
}