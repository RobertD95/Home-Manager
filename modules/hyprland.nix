{ config, inputs, ... }:
let
  hypr = inputs.hyprland.packages.x86_64-linux;
in
{
  xdg.configFile."uwsm/env".source =
    "${config.home.sessionVariablesPackage}/etc/profile.d/hm-session-vars.sh";
  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;
    systemd.variables = [ "-all" ];
  };

  services = {
    hyprpaper.enable = true;
    hyprsunset.enable = true;
    hyprpolkitagent.enable = true;
  };

  programs = {
    hyprshot.enable = true;
  };
}
