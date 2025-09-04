#!/bin/zsh

DOTFILES_DIR="$XDG_CONFIG_HOME/dotfiles"
echo "Cloning dotfiles to directory: $DOTFILES_DIR"
git clone --recursive https://github.com/heyallnorahere/dot.git $DOTFILES_DIR

if [[ $? -ne 0 ]]; then
    >&2 echo "Failed to clone dotfiles!"
    exit 1
fi

echo "Installing dotfiles..."

echo "source \"$XDG_CONFIG_HOME/zshrc\"" >> $XDG_CONFIG_HOME/zsh/.zshrc
echo "geninclude $XDG_CONFIG_HOME/kitty.py" >> $XDG_CONFIG_HOME/kitty/kitty.conf

echo "Dotfiles installed!"
