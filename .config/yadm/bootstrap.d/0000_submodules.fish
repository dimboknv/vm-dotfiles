#!/usr/bin/env fish

# Because Git submodule commands cannot operate without a work tree, they must
# be run from within $HOME (assuming this is the root of your dotfiles)
echo "Init submodules"
cd "$HOME"
yadm submodule update --recursive --init
