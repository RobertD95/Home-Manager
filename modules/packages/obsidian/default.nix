{ pkgs, inputs, ... }:
{
  programs = {
    obsidian = {
      enable = true;
      package = pkgs.obsidian;
    };
  };
}