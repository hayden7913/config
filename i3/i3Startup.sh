#!/bin/bash
dropbox start

# start vpn
~/pia.sh

# map space to control
s2cctl start

# map Escape to left shift
xcape -e 'Shift_L=Escape'

# get vim-like movement using caps lock
xmodmap ~/Dropbox/config/xmodmap/.xmod
