####################
# File Name: .profile
# Author:    Colin J. Mills
# Date:      2015/05/28
# Description: My .profile 
#
# NOTE:
#
# This profile file uses a specific OS variable to determine which OS it is being
# run on.
#
# The possible values are:
#
# OBSD: OpenBSD.
# FBSD: FreeBSD.
# LINUX: Linux.
####################

# This OS  variable determines which OS we are running on.
OS="OBSD"

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

export NOTES_DIR DATE PS1 NAME EMAIL




# OPENBSD ONLY #
#______________#

if [ "$OS" =  "OBSD" ]; then

    # Aliases #
    alias ifconfig="doas ifconfig "

    # Functions #
    function connect
    {
        doas ifconfig $1 nwid $2 wpakey $3
        doas dhclient $1
    }

    # Function Name: set
    function setvol
    {
        mixerctl outputs.master=$1,$2
    }
fi
