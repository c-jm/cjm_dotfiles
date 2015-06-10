####################
# File Name: .bashrc
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
PS1="$ "


export PATH HOME TERM EDITOR PS1


# Colin Created Environment Variables #

# I like to have my name in my environment #
NAME="Colin J. Mills"
EMAIL="colin.j.mills96@gmail.com"

# Where I store my notes #
NOTES_DIR=$HOME/data/notes

# I like to have the current time in scripts, and also its useful. #
TIME=$(date +%X)
DATE=$(date +%x)

export NOTES_DIR TIME DATE PS1 NAME EMAIL

# Aliases #

## Package Aliases ##
alias pkg_add="sudo pkg_add "

# Networking Aliases ##
alias up="sudo ifconfig iwn0 up"
alias dh="sudo dhclient iwn0"





## Term Aliases ##
alias off="sudo shutdown  -h now"
alias xres="xrdb -merge $HOME/.Xdefaults"
alias snm="sudo systemctl start NetworkManager"


### Functions ###

get_bat()
{
    acpi | awk '{print $4}'
}
