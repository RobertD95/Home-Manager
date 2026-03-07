{ pkgs, ... }:
{
        wayland.windowManager.hyprland = { enable = true; package = null; systemd.enable = false; xwayland.enable = true; };
        
        services = {
                hyprpaper = { enable = true; package = pkgs.hyprpaper; };
                hyprsunset = { enable = true; package = pkgs.hyprsunset; };
                hyprpolkitagent = { enable = true; package = pkgs.hyprpolkitagent; };
        };

        programs = {
                hyprshot = { enable = true; };
        };
}
