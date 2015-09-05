#!/bin/sh

# The directory to hold my dotfiles #
DOT_DIR="$HOME/.dotfiles"

# The actual files we will be working with #
DOT_FILES="user-dirs.dirs gitconfig xinitrc Xdefaults xbindkeysrc vimrc profile vim"


# Logic #
for file in $DOT_FILES; do
    echo "Symlinking file: $file"
    ln -sf $DOT_DIR/$file $HOME/.$file
done





