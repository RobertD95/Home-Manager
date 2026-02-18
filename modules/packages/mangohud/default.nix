{ pkgs, inputs, ... }:
{
  programs = {
    mangohud = {
      enable = true;
      package = pkgs.mangohud;
    };
  }
}