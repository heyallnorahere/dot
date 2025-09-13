#!/bin/sh

DOTFILES_DIR="$XDG_CONFIG_HOME/dotfiles"
echo "Cloning dotfiles to directory: $DOTFILES_DIR"

if ! git clone --recursive https://github.com/heyallnorahere/dot.git $DOTFILES_DIR; then
    echo "Failed to clone dotfiles!" >&2
    exit 1
fi

echo "Installing dotfiles..."

echo "source \"$DOTFILES_DIR/zshrc\"" >> $XDG_CONFIG_HOME/zsh/.zshrc
echo "geninclude $DOTFILES_DIR/kitty.py" >> $XDG_CONFIG_HOME/kitty/kitty.conf

echo "Dotfiles installed!"
