{ pkgs, ... }:
{
        services = {
                hyprpaper = { 
                        enable = true;
                        package = pkgs.hyprpaper;
                        settings = [
                                        "/home/robby/Pictures/Games/TLoZ/OOT.jpg"
                                        "/home/robby/Pictures/Games/FFXIV/FireWorks.png"
                        ];
                        wallpapaer = [
                                "DP-1, /home/robby/Pictures/Games/TLOZ/OOT.jpg"
                                "HDMI-A-1, /home/robby/Pictures/Games/FFXIV/FireWorks.png"
                        ];
                };
                hyprsunset = { enable = true; package = pkgs.hyprsunset; };
                hyprpolkitagent = { enable = true; package = pkgs.hyprpolkitagent; };
        };

        programs = {
                hyprshot = { enable = true; };
        };
}
