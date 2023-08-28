#!/usr/bin/env bash

echo "Setting wezterm configuration files."

if [ -d "$HOME/.config/wezterm" ]; then
	echo "wezterm configuration files already has been setted. "
else
	ln -s ~/dotfiles/wezterm ~/.config/wezterm
fi

echo "Wezterm configuration files is finished."

echo "Setting neovim configuration files."

if [ -d "$HOME/.config/nvim" ]; then
	echo "Neovim configuration files already has been setted."
else
	ln -s ~/dotfiles/nvim ~/.config/nvim
fi

echo "Neovim configuration files is finished."
