{ pkgs, inputs, ... }:
{
  home.packages = [
    pkgs.kdePackages.kdenlive
  ];
}