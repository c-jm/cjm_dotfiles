####################
# File Name: .profile
# Author:    Colin J. Mills
# Date:      2015/05/28
# Description: My .profile for a newly made OpenBSD system
####################

# System Created Environment Variables #

# Import LS_COLOURS #
. $HOME/.dotfiles/LS_COLORS

# Set the path #
PATH=/home/cjm/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:/usr/bin/core_perl:.

# Set my editor #
EDITOR=vim

# Set the PS1 #
PS1="$ "

export PATH HOME TERM EDITOR PS1


# Colin Created Environment Variables #

# Where I store my notes #
NOTES_DIR=$HOME/data/notes

# I like to have the current time in scripts, and also its useful. #
TIME=$(date +%X)
DATE=$(date +%x)

export NOTES_DIR TIME DATE PS1

# Aliases #

## Pacman Aliases ##
alias pacman="sudo pacman"


## Term Aliases ##
alias xres="xrdb -merge $HOME/.Xdefaults"


### Functions ###

