{ pkgs , ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      
      # autostart
      exec-once = [
        "systemctl --user import-environment &"
        "hash dbus-update-activation-environment 2>/dev/null &"
        "dbus-update-activation-environment --systemd &"
        "nm-applet &"
        "wl-clip-persist --clipboard both"
        "swaybg -m fill -i $(find ~/Pictures/wallpapers/ -maxdepth 1 -type f) &"
        "sleep 1 && swaylock"
        "hyprctl setcursor Nordzy-cursors 22 &"
        "waybar &"
        "mako &"
      ];
    };

    xwayland = {
      enable = true;
    };
    systemd.enable = true;
  };
}
