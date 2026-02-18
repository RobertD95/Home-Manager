{ pkgs, inputs, ... }:
{
  home.packages = [
    pkgs.ungoogled-chromium
  ];
}