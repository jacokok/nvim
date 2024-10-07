# My nixvim Configuration

This is my current nixvim configuration. Use it as part of OS but also allow running without cloning using nix.

## Nvim Config

This config is a work in progress and for my personal use.

## Run

```bash
nix run github:jacokok/nvim
```

## Setup Code

```bash
git clone url
cd nvim
nix run .
```

## Integrate with NixOS or Home Manager

```nix
{
  inputs = {
    nixvim-flake.url = "github:jacokok/nvim";
  };
}
```

```nix
{ inputs, ... }:
{
  home.packages = [ inputs.nixvim-flake.packages.${system}.default ];
}
```

### Install Tree Sitter

```bash
TSInstall svelte
```
