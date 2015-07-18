# Filename: .xinitrc
# Description:
# The starting point for startx(1)
# Author: Colin J. Mills
# Date: 02/06/15

#!/bin/sh


# Load our resources
#xrdb -load ~/.Xresources

# Set the annoying beep off.
xset -b 

# Start my wallpaper 
sh .fehbg

# Use xbindkeys to manage the keybindings #
xbindkeys &

# Start urxvtd #
urxvtd &

# Start the manager in the background #
2bwm 



