{ config, pkgs, ... }: {
    services.tailscale = {
        enable = true;
        package = pkgs.tailscale;
#        extraDaemonFlags = [
#            "--accept-routes"
#           ];
    };
}