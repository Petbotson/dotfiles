{ config, pkgs, ... }:

{
  home.username = "vincent";
  home.homeDirectory = "/home/vincent";

  # link the configuration file in current directory to the specified location in home directory
  # home.file.".config/i3/wallpaper.jpg".source = ./wallpaper.jpg;

  # link all files in `./scripts` to `~/.config/i3/scripts`
  # home.file.".config/i3/scripts" = {
  #   source = ./scripts;
  #   recursive = true;   # link recursively
  #   executable = true;  # make all files executable
  # };

  # encode the file content in nix configuration file directly
  # home.file.".xxx".text = ''
  #     xxx
  # '';

  # set cursor size and dpi for 4k monitor
  xresources.properties = {
    "Xcursor.size" = 16;
    "Xft.dpi" = 172;
  };

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    neofetch
    
    # archives
    zip
    xz
    unzip

    # networking tools
    mtr # A network diagnostic tool
    dnsutils  # `dig` + `nslookup`
    ldns # replacement of `dig`, it provide the command `drill`

    # misc
    cowsay
    file
    which
    tree
    spotify # spotify music service

    btop  # replacement of htop/nmon
    iotop # io monitoring
    iftop # network monitoring

    # system call monitoring
    strace # system call monitoring
    ltrace # library call monitoring
    lsof # list open files

    # system tools
    sysstat
    lm_sensors # for `sensors` command
    ethtool
    pciutils # lspci
    usbutils # lsusb
  ];

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.11";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
  
  # git config using home-manager
  programs.git = {
    enable = true;
    userName = "Vincent Schwalbach";
    userEmail = "mail@vincent-schwalbach.de";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };

  # zsh config using home-manager
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
    ll = "ls -l";
    update = "sudo nixos-rebuild switch";
    };
  history.size = 10000;
  history.path = "${config.xdg.dataHome}/zsh/history";
  };
}
