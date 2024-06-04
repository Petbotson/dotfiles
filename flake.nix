{
  description = "Petbotson's NixOS configuration";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland = {
      url = "github:hyprwm/Hyprland";
    };
    
    stylix = {
      url = "github:danth/stylix";
    };
  };

  outputs = inputs@{ self, nixpkgs, home-manager, stylix, ... }: {
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
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = {
              inherit inputs;
            };
            home-manager.users.vincent = import ./home;
          }
          stylix.nixosModules.stylix
        ];
      };
    };
  };
}
