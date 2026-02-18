{ pkgs, inputs, ... }:
{
  programs = {
    librewolf = {
      enable = true;
      package = pkgs.librewolf;
    };
  };
}