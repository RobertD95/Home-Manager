{ pkgs, inputs, ... }:
{
  home.packages = [
    inputs.hytale.packages.x86_64-linux.hytale-launcher
  ];
}