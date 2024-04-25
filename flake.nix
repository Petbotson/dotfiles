{
  description = "Petbotson's NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland = {
      url = "github:hyprwm/Hyprland";
    };
  };

  outputs = inputs@{ self, nixpkgs, nixpkgs-unstable, home-manager, hyprland, ... }: {
    nixosConfigurations = {
      vs-nb = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { 
          inherit inputs; 
          };

        modules = [
          ./hosts/vs-nb
          ./modules

          home-manager.nixosModules.home-manager
          {
          #  home-manager.useGlobalPkgs = true;
          #  home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = {
              inherit inputs;
            };
            home-manager.users.vincent = import ./home;
          }
        ];
      };
    };
  };
}
