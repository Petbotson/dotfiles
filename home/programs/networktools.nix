{ lib, pkgs, ... }: {
  home.packages = with pkgs; [
    # networking tools
    mtr # A network diagnostic tool
    dnsutils  # `dig` + `nslookup`
    ldns # replacement of `dig`, it provide the command `drill`

    btop  # replacement of htop/nmon
    iotop # io monitoring
    iftop # network monitoring
  ];
}
