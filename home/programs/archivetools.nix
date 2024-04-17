{ lib, pkgs, ... }: {
  home.packages = with pkgs; [
    # archive tools
    zip
    xz
    unzip
  ];
}
