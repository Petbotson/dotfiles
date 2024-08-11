{ config, pkgs, pkgs-unstable, ... }:

{

  imports = [
    ./dev
    ./fonts.nix
    ./hyprland
    ./mako.nix
    ./programs
    ./shell
    ./waybar.nix
   # ./wofi.nix
  ];

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home = {
    username = "vincent";
    homeDirectory = "/home/vincent";

    # This value determines the Home Manager release that your
    # configuration is compatible with. This helps avoid breakage
    # when a new Home Manager release introduces backwards
    # incompatible changes.
    #
    # You can update Home Manager without changing this value. See
    # the Home Manager release notes for a list of state version
    # changes in each release.
    stateVersion = "23.11";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}