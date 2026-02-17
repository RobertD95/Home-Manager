{ pkgs, inputs, ... }:
{
  programs = {
    obsidian = {
      enable = true;
      package = pkgs.obsidian;
    };
    librewolf = {
      enable = true;
      package = pkgs.librewolf;
    };

  };
  home.packages = [
  # Editor
    pkgs.blockbench
    pkgs.github-desktop
    pkgs.kdePackages.kdenlive
    pkgs.vscodium
  # Social
    pkgs.discord
    pkgs.telegram-desktop
  # Other
  	pkgs.gnome-disk-utility         # Disk Utility
		pkgs.resources                  # System Monitoring Program
    pkgs.ungoogled-chromium
    pkgs.usbutils
		pkgs.vlc
  ];
}