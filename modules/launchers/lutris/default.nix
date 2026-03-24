{ pkgs, inputs, config, ... }:
{
        programs = {
                lutris = {
                        enable = true;
                        package = pkgs.lutris.overrideAttrs (old: {
                                src = pkgs.fetchFromGitHub {
                                        owner = "lutris";
                                        repo = "lutris";
                                        rev = "v0.5.22";
                                        sha256 = "sha256-4mNknvfJQJEPZjQoNdKLQcW4CI93D6BUDPj8LtD940A=";
                                };
                        });
                };
        };
}
