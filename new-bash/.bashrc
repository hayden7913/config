# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
#a for examples
	
# My aliases
alias wi='nmcli dev wifi con mushmountain_EXT password shrimpboiz69'
alias sdn='shutdown now'
alias d='rm -rf'
alias wb='vim ~/.bashrc'
alias lb='source ~/.bashrc'
alias wv='vim ~/.vim_runtime/my_configs.vim'
alias read='touch README.md'

alias sv='nodemon server.js'
alias s='npm start'
alias b='npm run build'
alias lint='npm run lint'
alias lintf='npm run lint:fix'
alias dep='npm run deploy'
alias j='npm run test'
alias jw='npm run test:watch'

alias rnm='rm -rf node_modules && npm i'
alias u='cd ../ && l'
alias uu='cd ../../ && l'
alias 3u='cd ../../../ && l'
alias cl='clear'

alias sw='cd ~/Software && l'
alias dk='cd ~/Desktop && l'
alias m='cd ~/MEGAsync && l'
alias ut='cd ~/MEGAsync/utils && l'
alias cf='cd ~/MEGAsync/config && l'
alias sb='cd ~/MEGAsync/sandbox && l'
alias vr='cd ~/MEGAsync/vendor-repos && l'
alias dev='cd ~/MEGAsync/dev-utils && l'
alias boil='cd ~/MEGAsync/boilerplates && l'
alias aa='cd ~/MEGAsync/AnkiAssistant && l'
alias ss='cd ~/MEGAsync/sscheduler && l'
alias pf1='cd ~/MEGAsync/portfolio && l'
alias pf='cd ~/MEGAsync/portfolio3 && l'
alias pcb='cd ~/MEGAsync/PCBflow && l'
alias tt='cd ~/MEGAsync/tomato-tracker && l'
alias tto='cd ~/MEGAsync/tf/tomato-tracker-old && l'
alias pt='cd ~/MEGAsync/tf/PomTracker-Capstone'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias lcf='ls -CF'

# colors
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)

# My Functions
c() { clear && printf "${MAGENTA}Folder Contents:${NORMAL}\n\n" && cd "$1" && ls && printf "\n" ; }
l() { clear && printf "${MAGENTA}Folder Contents:${NORMAL}\n\n" && lcf && printf "\n" ; }
unpackTar() { tar xvzf "$1"; }
watchJava() { watchFile "$1.java" "javac $1.java" "java $1";}
trash() { trash-put "$1"; }
fr() { find . -name "$1" -print0 | xargs -0  perl "$2"; }
sleepAt() { echo pm-suspend | sudo at $1; }
au() { ut && mkdir "$1" && touch "$1/README.md"; }


# Disable ctrl-s in console 
bind -r '\C-s'
stty -ixon


# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  # We have color support; assume it's compliant with Ecma-48
  # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
  # a case would tend to support setf rather than setaf.)
  color_prompt=yes
    else
  color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac


# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/usr/lib/google-cloud-sdk/bin:$PATH"
export PATH="/home/hayden/MEGAsync/sandbox/node-file-system/appendAction:$PATH"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/lula/google-cloud-sdk/path.bash.inc' ]; then source '/home/lula/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/lula/google-cloud-sdk/completion.bash.inc' ]; then source '/home/lula/google-cloud-sdk/completion.bash.inc'; fi


export ANDROID_SDK=/Users/myuser/Library/Android/sdk
