{ pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        opacity = 0.95;
        dynamic_padding = true;
        padding = {
          x = 5;
          y = 5;
        };
      };

      scrolling.history = 10000;

      font = {
        normal.family = "JetBrains Mono";
        bold.family = "JetBrains Mono";
        italic.family = "JetBrains Mono";
        size = 10;
      };

#      imports = [
#        (pkgs.fetchurl {
#          url = "https://raw.githubusercontent.com/catppuccin/alacritty/3c808cbb4f9c87be43ba5241bc57373c793d2f17/catppuccin-mocha.yml";
#          hash = "sha256-28Tvtf8A/rx40J9PKXH6NL3h/OKfn3TQT1K9G8iWCkM=";
#        })
#      ];
    };
  };
}