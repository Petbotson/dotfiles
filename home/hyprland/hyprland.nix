{ pkgs, lib, config, hyprland, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    settings = {

    };
    systemd.enable = true;
  };
}