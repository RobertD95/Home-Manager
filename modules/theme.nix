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
			package = pkgs.breeze-gtk; # Breeze GTK theme package
			name = "Breeze";           # Use Breeze theme
		};
		iconTheme = {
			package = pkgs.breeze-icons; # Breeze icons package
			name = "Breeze";             # Breeze icon theme
		};
  		font = {
		name = "Sans";
		size = 11;
  		};
	};

}
