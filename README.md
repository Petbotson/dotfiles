<div align="center">
    <img alt="NixOS" src="assets/nixos-colorful-logo.svg" width="120px"/>
    <h1>Petbotson's Dotfiles</h1>
    </a>
</div>

## Structure
```shell
├── assets
│   └── nixos-colorful-logo.svg
├── flake.lock
├── flake.nix
├── home
│   ├── default.nix
│   ├── dev
│   │   ├── alacritty.nix
│   │   ├── default.nix
│   │   ├── git.nix
│   │   └── vscode.nix
│   ├── programs
│   │   ├── archivetools.nix
│   │   ├── common.nix
│   │   ├── default.nix
│   │   ├── networktools.nix
│   │   └── systools.nix
│   └── shell
│       ├── default.nix
│       ├── starship.nix
│       └── zsh.nix
├── hosts
│   └── vs-nb
│       ├── default.nix
│       ├── hardware-configuration.nix
│       └── README.md
├── LICENSE
└── README.md
```