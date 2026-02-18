{ pkgs, inputs, ... }:
{
  home.packages = [
    pkgs.usbutils
  ];
}