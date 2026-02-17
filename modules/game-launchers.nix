{ pkgs, inputs, ... }:
let 
  obs-plugins = pkgs.obs-studio-plugins;
in 
{
  programs = {
    lutris = {
      enable = true;
      package = pkgs.lutris;
    };
    mangohud = {
      enable = true;
      package = pkgs.mangohud;
    };
    obs-studio = {
      enable = true;
      package = pkgs.obs-studio;
      plugins = [ obs-plugins.obs-multi-rtmp obs-plugins.obs-vkcapture ];
    };
  };
  home.packages = [
  # gaming-launchers
    pkgs.heroic
    pkgs.r2modman
    pkgs.retroarch
  #specific-launchers
    pkgs.xivlauncher
    pkgs.prismlauncher
  #game-extra
    pkgs.appimage-run
    pkgs.lsfg-vk
    pkgs.protonup-qt
  ];
}