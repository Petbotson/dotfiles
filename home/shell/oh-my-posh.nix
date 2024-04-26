{ pkgs, ... }: {

    programs.oh-my-posh = {
        enable = true;
        enableZshIntegration = true;
        usetheme = catppuccin_mocha;
    };
}