{ pkgs, inputs, ... }:
{
  home.packages = [
    pkgs.kdePackages.kcalc
  ];
}
