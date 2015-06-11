# Filename: .xinitrc
# Description:
# The starting point for startx(1)
# Author: Colin J. Mills
# Date: 02/06/15

#!/bin/sh

# Set a nice background
xsetroot -solid grey20

# Load our resources
xrdb -load ~/.Xdefaults

# Set the annoying beep off.
xset -b 

# Use xbindkeys to manage the keybindings #
xbindkeys &

# Start the manager in the background #
evilwm 



