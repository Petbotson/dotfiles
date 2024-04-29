{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    nextcloud-client
  ];
  
    services.nextcloud-client = {
        enable = true;
        package = pkgs.nextcloud-client;
        startInBackground = true;
    };
}