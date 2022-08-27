#!/usr/bin/env fish

echo "Init fish shell"

if not functions -q fisher
    echo "Installing fisher..."
    curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
end

echo "Fisher update..."
fisher update

echo "Configure tide prompt"
printf "%s\n" 1 1 2 2 1 2 2 y | tide configure

echo "Update local plugis"
for plugin in (find -L ~/.config/fish/local-plugins -type d -d 1)
    echo $plugin
    fisher remove $plugin
    fisher install $plugin
end
