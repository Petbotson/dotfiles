{ pkgs, ... }: {
  networking.wg-quick.interfaces = let
    server_ip = "192.168.178.254";
  in {
    wg0 = {
      # IP address of this machine in the *tunnel network*
      address = [
        "10.99.99.3/32"
      ];
      dns = [
        "10.99.0.1"
      ];
      listenPort = 51820;
      privateKeyFile = "/etc/ssl/privkey/home-vpn.key";
      peers = [{
        publicKey = "ap8zG1OQKfFNlI52Wu54aCqNvlhiQSzSDPcUw5LIzHQ=";
        allowedIPs = [ "10.99.0.0/20" ];
        endpoint = "${server_ip}:51820";
      }];
    };
  };
}