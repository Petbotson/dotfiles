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
    flameshot

    # dev and coding stuff
    ansible
    hugo
    packer
    terraform
    kubectl
    k9s
    kubernetes-helm
    helmfile
  ];
}
