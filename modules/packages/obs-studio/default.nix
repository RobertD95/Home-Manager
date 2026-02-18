{ pkgs, ... }:
let 
  obs-plugins = pkgs.obs-studio-plugins;
in 
{
  programs = {
    obs-studio = {
      enable = true;
      package = pkgs.obs-studio;
      plugins = [ obs-plugins.obs-multi-rtmp obs-plugins.obs-vkcapture ];
    };
  }
}