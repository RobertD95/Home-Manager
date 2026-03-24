{ pkgs, ... }:
let
        hash = "sha256-4mNknvfJQJEPZjQoNdKLQcW4CI93D6BUDPj8LtD940A=";
in
{
        programs = {
                lutris = {
                        enable = true;
                        package = pkgs.lutris.overrideAttrs (old: {
                                src = pkgs.fetchFromGitHub {
                                        owner = "lutris";
                                        repo = "lutris";
                                        rev = "master";
                                        sha256 = hash;
                                };
                        });
                };
        };
}
