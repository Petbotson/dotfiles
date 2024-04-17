{ pkgs, ... }: {
  home.packages = with pkgs;

  # git config using home-manager
  programs.git = {
    enable = true;
    userName = "Vincent Schwalbach";
    userEmail = "mail@vincent-schwalbach.de";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
