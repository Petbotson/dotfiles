{ pkgs, lib, config, hyprland, ... }:

#  let
#    startupScript = pkgs.pkgs.writeShellScriptBin "start" ''
#      ${pkgs.waybar}/bin/waybar &
#      ${pkgs.swww}/bin/swww init &
#  
#      sleep 1
#  
#      ${pkgs.swww}/bin/swww img ${./wallpaper.png} &
#    '';
#in
{
  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
#      exec-once = ''${startupScript}/bin/start'';
    };
  };
}