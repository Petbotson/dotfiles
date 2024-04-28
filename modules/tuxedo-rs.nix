{ pkgs, ... }:
{
    programs.tuxedo-rs = {
        enable = true;
        tailor-gui = {
            enable = true;
        };
    };
}