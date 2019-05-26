#!/bin/bash

# start vpn
~/pia.sh

# map space to control
s2cctl start

# map Escape to left shift
xcape -e 'Shift_L=Escape'

# get vim-like movement using caps lock
xmodmap ~/MEGAsync/config/i3/xmodmap/.xmod
