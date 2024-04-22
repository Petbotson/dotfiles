{ pkgs, ... }: {

  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    };

    shellAliases = {
      ll = "ls  -lah";
    };

#    oh-my-zsh = {
#      enable = true;
#      plugins = [ "terraform" ];
#    };
}