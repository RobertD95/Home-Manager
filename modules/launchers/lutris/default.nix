{ pkgs, inputs, config, ... }:
{
        programs = {
                lutris = {
                        enable = true;
                        package = pkgs.lutris.overrideAttrs (old: {
                                src = pkgs.fetchFromGitHub {
                                        owner = "lutris";
                                        repo = "lutris";
                                        rev = "master";
                                        sha256 = "";
                                };
                        });
                };
        };
}
