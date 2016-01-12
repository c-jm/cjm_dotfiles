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
# ARCH_LINUX: Arch Linux.
####################

# This OS  variable determines which OS we are running on.
OS="ARCH_LINUX"

# Set the path #
PATH=/home/cjm/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:/usr/bin/core_perl:.

# Set my editor #
EDITOR=vim

# Set the PS1 #
PS1="% "

export PATH HOME TERM EDITOR PS1 PKG_PATH

# Colin Created Environment Variables #

# I like to have my name in my environment #
NAME="Colin J. Mills"
EMAIL="colin.j.mills96@gmail.com"

# I like to have the current date in scripts, and also its useful. #
DATE=$(date +%x)

export DATE PS1 NAME EMAIL

# OS Specific #
# =========== #

# OPENBSD ONLY #
if [ "$OS" =  "OBSD" ]; then

    # Set the package path for openbsd #
    PKG_PATH="http://openbsd.cs.toronto.edu/pub/OpenBSD/`uname -r`/packages/`machine -a`/"


    # Aliases #
    alias ifconfig="doas ifconfig "
    alias off="doas shutdown -h now"

    # Functions #
    # itions #

    # connect()
    #
    # Takes an interface a network id and a wpakey to connect to a wireless access point
    # secured with WPA using ifconfig(1). It then runs dhclient(1) on that interface to
    # obtain an IP address.
    #
    # $1: interface: The interface we are connecting on.
    #
    # $2: nwid:      The network id that we are connecting to.     
    # 
    # $3: wpakey:    The key to the network we are connecting to.
    #
    # ie. connect iwn0 test_network 1234 
    # 
    # ^ Connect on interface iwn0 to the network with the
    # SSID test_network with the password 1234.
    #
    function connect
    {
        doas ifconfig $1 nwid $2 wpakey $3
        doas dhclient $1
    }



    # setvol()
    # 
    # Uses mixerctl and sets the volume to the parameters passed in.
    #
    # $1: The first value to set the speakers to.
    #
    # $2: The second value to set the speakers to.
    # 
    # ie. setvol 200,200 
    # ^ Sets the volume of the speakers to the max. 
    # 
    function setvol
    {
        mixerctl outputs.master=$1,$2
    }

elif [ "$OS" = "ARCH_LINUX" ]; then

    PKG_BUILD_DIR=/home/cjm/bin/pkg-builds/

    # Aliases #
    # ------- #
    alias pacman="sudo pacman"
    alias off="sudo shutdown -h now"
fi
