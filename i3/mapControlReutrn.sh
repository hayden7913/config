#!/bin/bash
xmodmap -e "remove Control = Control_R"
xmodmap -e "keycode 0x69 = Return"
xmodmap -e "keycode 0x20 = Control_R"
xmodmap -e "add Control = Control_R"

xcape -t 10000 -e "Control_R=Return"



xcape -e 'Shift_L=Escape;Control_L=Control_L|O'
