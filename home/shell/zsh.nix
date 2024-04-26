{ pkgs, ... }: {

  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "ls  -lah";
    };

#    oh-my-zsh = {
#      enable = true;
#      plugins = [ "git" "terraform" ];
#    };
#  };
}