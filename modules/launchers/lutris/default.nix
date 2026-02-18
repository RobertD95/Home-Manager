{ pkgs, inputs, ... }:
{
  programs = {
    lutris = {
      enable = true;
      package = pkgs.lutris;
    };
  };
}