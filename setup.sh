#!/usr/bin/env bash

echo "Setting neovim configuration files."

if [ -d "$HOME/.config/nvim" ]; then
	echo "Neovim configuration files already has been setted."
else
	ln -s ~/dotfiles/nvim ~/.config/nvim
fi

echo "Neovim configuration files is finished."
