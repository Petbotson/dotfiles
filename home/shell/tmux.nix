{ pkgs, config, ...}: {
    programs.tmux = {
        enable = true;
        mouse  = true;
    #   shell  = "/run/current-system/sw/bin/zsh ";
        clock24 = true;
        plugins = [                  
        ];
    };
}