#!/usr/bin/env fish

echo "Init nix home-manager"
if command -sq home-manager; test -f $HOME/.config/nixpkgs/home.nix
    home-manager switch
end
