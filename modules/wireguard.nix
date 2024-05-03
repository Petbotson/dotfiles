{ pkgs, ... }: {
  networking.wireguard.interfaces = let
    server_ip = "192.168.178.254";
  in {
    wg0 = {
      # IP address of this machine in the *tunnel network*
      ips = [
        "10.99.99.3/32"
      ];

      # To match firewall allowedUDPPorts (without this wg uses random port numbers).
      listenPort = 51820;

      # Path to the private key file.
      privateKeyFile = "/etc/ssl/privkey/home-vpn.key";

      peers = [{
        publicKey = "ap8zG1OQKfFNlI52Wu54aCqNvlhiQSzSDPcUw5LIzHQ=";
        allowedIPs = [ "10.99.0.0/20" ];
        endpoint = "${server_ip}:51820";
        persistentKeepalive = 25;
      }];
    };
  };
}