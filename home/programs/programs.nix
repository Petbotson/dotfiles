{ lib, pkgs, ... }: {
  home.packages = with pkgs; [
    # misc
    cowsay
    file
    which
    tree
    spotify
    fastfetch
    signal-desktop
    obsidian
    bitwarden-desktop
    mailspring

    # dev and infra stuff
    terraform
    hugo
    packer
  ];
}