{
  imports = [
    ./cachix.nix
    ./core
    ./programs.nix   # this is needed, because some programs can be configured in hm but some things need system level acces (e.g. zsh)
    ./tuxedo-rs.nix
    ./wayland.nix
  ];
}