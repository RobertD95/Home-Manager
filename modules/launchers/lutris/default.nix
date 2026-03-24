{ pkgs, inputs, config, ... }:
let
        ver = "0.5.22";
        nixpkgs = builtins.fetchTarball {
                url = "https://github.com/lutris/lutris/archive/refs/tags/v${ver}.tar.gz";
                sha256 ="0h73zp82xz7q1iaa03vpiw4biia1ig93aa1lcq7r2h69yyg68qz2";
        };
        lutris = import nixpkgs { config = config.nixpkgs.config; };
in
{
  programs = {
    lutris = {
      enable = true;
      package = lutris.lutris;
    };
  };
}
