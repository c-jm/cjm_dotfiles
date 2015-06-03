# Filename: .xinitrc
# Description:
# The starting point for startx(1)
# Author: Colin J. Mills
# Date: 02/06/15

#!/bin/sh

# Set a nice background
xsetroot -solid grey20

# Load our resources
xrdb -load ~/.Xresources

# Set the annoying beep off.
xset -b 

# Star the manager in the background #
2bwm 



