{ pkgs, ... }:
{
  home.pointerCursor = {
    gtk.enable = true;
    # x11.enable = true;
    package = pkgs.kdePackages.breeze-icons;
    name = "Breeze-Light";
    size = 72;
  };

  gtk = {
    enable = true;

    theme = {
      package = pkgs.kdePackages.breeze;
      name = "Breeze Dark";
    };

    iconTheme = {
      package = pkgs.adwaita-icon-theme;
      name = "Adwaita";
    };

    font = {
      name = "Sans";
      size = 11;
    };
  };
}
