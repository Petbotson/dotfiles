{ pkgs, ... }: {

    programs.oh-my-posh = {
        enable = true;
        enableZshIntegration = true;
        useTheme = "catppuccin_mocha";
    };
}