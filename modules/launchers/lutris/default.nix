{ pkgs, ... }:
{
        programs = {
                lutris = {
                        enable = true;
                        package = pkgs.lutris;
                };
        };
}
