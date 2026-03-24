{ pkgs, inputs, config, ... }:
let
        ver = "v0.5.22";
        hash = "";
in
{
        programs = {
                lutris = {
                        enable = true;
                        package = (pkgs.lib.makeOverridable pkgs.lutris).override {
                                src = pkgs.fetchFromGitHub {
                                        owner = "lutris";
                                        repo = "lutris";
                                        rev = ver;
                                        sha256 = hash;
                                };
                        };                                      
                };
        };
}
