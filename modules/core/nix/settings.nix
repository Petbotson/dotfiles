{
    nix = {
      settings = {
      auto-optimise-store = true;
      builders-use-substitutes = true;
      experimental-features = ["nix-command" "flakes"];
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };
}