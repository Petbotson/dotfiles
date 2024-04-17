{ lib, pkgs, ... }: {
  home.packages = with pkgs; [
    # misc
    cowsay
    file
    which
    tree
    spotify # spotify music service
    neofetch
  ];
}
