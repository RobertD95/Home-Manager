{ pkgs, ... }:
{
        services = {
                hyprpaper = { enable = true; package = pkgs.hyprpaper; };
                hyprsunset = { enable = true; package = pkgs.hyprsunset; };
                hyprpolkitagent = { enable = true; package = pkgs.hyprpolkitagent; };
        };

        programs = {
                hyprshot = { enable = true; };
        };
}
