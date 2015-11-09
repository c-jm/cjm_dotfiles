####################
# File Name: .kshrc
# Author:    Colin J. Mills
# Date:      2015/05/28
# Description: My .profile 
####################

# System Created Environment Variables #

# Set the path #
PATH=/home/cjm/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:/usr/bin/core_perl:.

# Set my editor #
EDITOR=vim

# Set the PS1 #
PS1="% "

# Set the package path for openbsd #
PKG_PATH="http://openbsd.cs.toronto.edu/pub/OpenBSD/`uname -r`/packages/`machine -a`/"

export PATH HOME TERM EDITOR PS1 PKG_PATH


# Colin Created Environment Variables #

# I like to have my name in my environment #
NAME="Colin J. Mills"
EMAIL="colin.j.mills96@gmail.com"

# Where I store my notes #
NOTES_DIR=$HOME/data/notes

# I like to have the current date in scripts, and also its useful. #
DATE=$(date +%x)

export NOTES_DIR TIME DATE PS1 NAME EMAIL


# OPENBSD ONLY #
#______________#

# Function Name: set
function setvol
{
    mixerctl outputs.master=$1,$2
}


