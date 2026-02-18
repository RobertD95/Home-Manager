{ pkgs, inputs, ... }:
{
  home.packages = [
    pkgs.resources 
  ];
}