{config, ...}: let
  d = config.xdg.dataHome;
  c = config.xdg.configHome;
  cache = config.xdg.cacheHome;
in {
  imports = [
#    ./oh-my-posh.nix
    ./starship.nix
    ./yazi.nix
    ./zsh.nix
  ];
}
