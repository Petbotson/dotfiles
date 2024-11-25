{
  imports = [
    ./core
    ./helm.nix
    ./programs.nix   # this is needed, because some programs can be configured in hm but some things need system level acces (e.g. zsh)
    ./stylix.nix
    ./tailscale.nix
    ./tuxedo-rs.nix
    ./wayland.nix
#   ./wireguard.nix
  ];
}