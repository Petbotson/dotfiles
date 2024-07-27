{ pkgs, ... }: {
  home.packages = [pkgs.gh];

  # git config using home-manager
  programs.git = {
    enable = true;
    userName = "Petbotson";
    userEmail = "81176836+Petbotson@users.noreply.github.com";
    extraConfig = {
      init.defaultBranch = "main";
      gpg = {
        format = "ssh";
        ssh.allowedSignersFile = "~/.ssh/allowed_signers";
      };
    };
    signing = {
      key = "~/.ssh/id_ed25519";
      signByDefault = true;
    };
  };
} 