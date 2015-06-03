####################
# File Name: .profile
# Author:    Colin J. Mills
# Date:      2015/05/28
# Description: My .profile for a newly made OpenBSD system
####################

# System Created Environment Variables #

# Set the path #
PATH=/home/cjm/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:.

# Set my editor #
EDITOR=vim

export PATH HOME TERM EDITOR


# Colin Created Environment Variables #

# Where I store my notes #
NOTES_DIR=$HOME/data/notes

# I like to have the current time in scripts, and also its useful. #
TIME=$(date +%X)
DATE=$(date +%x)

export NOTES_DIR TIME DATE

# Aliases #

## Pacman Aliases ##
alias pacman="sudo pacman"


## Term Aliases ##
alias xres="xrdb -merge $HOME/.Xdefaults"


### Functions ###

