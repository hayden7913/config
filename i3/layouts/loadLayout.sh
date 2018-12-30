#!/bin/bash

if [ $(whoami) != 'lula' ]; then
  i3-msg 'workspace 1; append_layout ~/Dropbox/config/i3/layouts/workspace-1.json' &
  exec atom &
  exec google-chrome &
  i3-msg 'workspace 2; append_layout ~/Dropbox/config/i3/layouts/workspace-2.json' &
  exec google-chrome &
  exit 0
fi
