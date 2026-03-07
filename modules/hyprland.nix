{ pkgs, lib, ... }:
{
        wayland.windowManager.hyprland  = {
                enable = true;
                systemd = {
                        enable = true;
                        variables = ["--all"];
                };
                xwayland.enable = true;
        };
        services = {
                hyprpaper = { 
                        enable = true;
#                       settings = {
#preload = [
#                                       "$HOME/Pictures/Games/TLoZ/OOT.jpg"
#                                       "$HOME/Pictures/Games/FFXIV/FireWorks.png"
#                               ];
#                               wallpapaer = [
#                                       "DP-1, $HOME/Pictures/Games/TLOZ/OOT.jpg"
#                                       "HDMI-A-1,$HOME/Pictures/Games/FFXIV/FireWorks.png"
#                               ];
#                       };
               };
                hyprsunset = { enable = true; package = pkgs.hyprsunset; };
                hyprpolkitagent = { enable = true; package = pkgs.hyprpolkitagent; };
        };

        programs = {
                hyprshot = { enable = true; };
        };
}
