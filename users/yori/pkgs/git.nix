{config, pkgs,...}:
{
  programs.git = {
    extraConfig = {
      user = {
        name = "YorigamiChitose";
        email = "YorigamiChitose@outlook.com";
      };
    };
  };
}