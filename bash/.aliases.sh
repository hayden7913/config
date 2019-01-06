alias wi='nmcli dev wifi con mushmountain_EXT password shrimpboiz69'
alias sdn='shutdown now'
alias ss='sudo pm-suspend'
alias d='rm -rf'
alias wb='vim ~/.aliases.sh'
alias lb='source ~/.bashrc'
alias wv='vim ~/.vim_runtime/my_configs.vim'
alias rd='touch README.md'

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
alias i3='cd ~/MEGAsync/config/i3 && l'
alias sb='cd ~/MEGAsync/sandbox && l'
alias vr='cd ~/MEGAsync/vendor-repos && l'
alias dev='cd ~/MEGAsync/dev-utils && l'
alias nov='cd ~/MEGAsync/boilerplates/Nov-2018-React-Redux-HMR && l'
alias boil='cd ~/MEGAsync/boilerplates/ && l'
alias sl='cd ~/MEGAsync/SolaDosis && l'
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
    alias ll='ls -alF'
    alias la='ls -A'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
#alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

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

#Functions

c() { clear && printf "${MAGENTA}Folder Contents:${NORMAL}\n\n" && cd "$1" && ls && printf "\n" ; }
l() { clear && printf "${MAGENTA}Folder Contents:${NORMAL}\n\n" && ls && printf "\n" ; }
unpackTar() { tar xvzf "$1"; }
watchJava() { watchFile "$1.java" "javac $1.java" "java $1";}
watchPerl() { watchFile "$1" "perl $1";}
watchNode() { watchFile "$1" "node $1";}
trash() { trash-put "$1"; }
fr() { find . -name "$1" -print0 | xargs -0  perl "$2"; }
sleepAt() { echo pm-suspend | sudo at $1; }
au() {  "hello\n" ut && mkdir "$1" && touch "$1/README.md" && atom "$1/README.md"; }



