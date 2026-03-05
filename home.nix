{ ... }:

{
  imports = [
    ./modules
  ];
  nixpkgs.config.allowUnfree = true;
  home.username = "robby";
  home.homeDirectory = "/home/robby";
  home.file = {
  };
  home.sessionVariables = {
    EDITOR = "nvim";
  };
  programs.home-manager.enable = true;
  home.stateVersion = "25.11";
}
