{ pkgs, inputs, config, ... }:
{
        programs = {
                lutris = {
                        enable = true;
                        package = pkgs.stdenv.mkDerivation {
                                pname = "lutris";
                                version = "git";
                                src = pkgs.fetchFromGitHub {
                                        owner = "lutris";
                                        repo = "lutris";
                                        rev = "master";
                                        sha256 = "";
                                };
                                buildPhase = "true";
                                installPhase = ''
                                        runHook preInstall
                                        mkdir -p $out
                                        cp -r $src/* $out/
                                        runHook postInstall 
                                '';
                        };                                      
                };
        };
}
