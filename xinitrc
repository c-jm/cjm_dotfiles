# Filename: .xinitrc
# Description:
# The starting point for startx(1)
# Author: Colin J. Mills
# Date: 02/06/15

#!/bin/sh

# Merge the xresources
xrdb -merge ~/.Xdefaults

# Set the annoying beep off.
xset -b 

# Use xbindkeys to manage the keybindings #
xbindkeys &

# Start urxvtd #
urxvtd &

# Start the manager in the background #
dwm



