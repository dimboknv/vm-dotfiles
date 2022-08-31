#!/usr/bin/env fish

echo "Init fish shell"

if not functions -q fisher
    echo "Installing fisher..."
    curl -sL https://git.io/fisher | source
end

echo "Fisher update..."
fisher update

echo "Update local plugis"
for plugin in (find -L ~/.config/fish/local-plugins/ -maxdepth 1 -mindepth 1 -type d)
    echo $plugin
    fisher remove $plugin
    fisher install $plugin
end

echo "Configure tide prompt"
printf "%s\n" 1 1 2 2 1 2 2 y | tide configure
