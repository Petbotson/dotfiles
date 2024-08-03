{ config, pkgs, ... }: 
{
  networking.firewall.enable = true;
  networking.firewall.allowedTCPPorts = [ ];
  networking.firewall.allowedUDPPorts = [ 
    51820
    config.services.tailscale.port 
    ];
}