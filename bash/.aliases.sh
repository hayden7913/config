# Delete Me
alias conD='adb tcpip 5555 && adb connect 10.0.0.167:5555 && scrcpy'

# Power management
alias sdn='sudo shutdown -h now'
alias sn='pmset sleepnow'

# Misc
alias r='clear'
alias lb=". ~/.zshrc"
alias wb="vim ~/.aliases.sh"
alias rd='touch README.md'
alias dl='trash'

# Navigation 
alias u='cd ../ && l'
alias uu='cd ../../ && l'
alias 3u='cd ../../../ && l'
alias com='cd src/components'

# Node
alias sv='nodemon server.js'

# Npm / Yarn
alias s='npm start'
alias ys='yarn start'
alias lint='npm run lint'
alias lintf='npm run lint:fix'
alias dep='npm run deploy'
alias j='npm run test'
alias jw='npm run test:watch'
alias rnm='rm -rf node_modules && npm i'

# Folders
alias sw='cd ~/Software && l'
alias dk='cd ~/Desktop && l'
alias doc='cd ~/Documents && l'
alias dn='cd ~/Downloads && l'
alias mg='cd ~/MEGA && l'
alias ut='cd ~/MEGA/utils && l'
alias cf='cd ~/MEGA/config && l'
alias sb='cd ~/MEGA/sandbox && l'
alias sbn='cd ~/MEGA/sandbox/node && l'
alias sbj='cd ~/MEGA/sandbox/java && l'
alias sbp='cd ~/MEGA/sandbox/python && l'
alias vr='cd ~/MEGA/vendor-repos && l'
alias nov='cd ~/MEGA/boilerplates/Nov-2018-React-Redux-HMR && l'
alias boil='cd ~/MEGA/boilerplates/ && l'
alias prose='cd ~/MEGA/occasional/prose && l'


# Repos
alias lqd='cd ~/MEGA/lq_design/ && l'
alias lq='cd ~/MEGA/lq_app/ && l'
alias qf='cd ~/MEGA/lq_app/frontend && l'
alias qb='cd ~/MEGA/lq_app/backend && l'
alias ns='nodemon server.js'
alias pcb='cd ~/MEGA/PCBflow && l'
alias tt='cd ~/MEGA/tomato-tracker && l'
alias tto='cd ~/MEGA/tf/tomato-tracker-old && l'
alias pt='cd ~/MEGA/tf/PomTracker-Capstone'

# LQ Aliases
alias pilq="sshpass -p 'raspberry' ssh pi@25.81.56.126"
alias printLogs="pilq && tail -200 ~/lq_app/backend/logs/debug.json"
alias cpLogs='sshpass -p 'raspberry' scp -r pi@25.81.56.126:~/lq_app/backend/logs ./'
alias cpDist='sshpass -p 'raspberry' scp dist pi@25.81.56.126:~/lq_app/backend'
alias st='qf && cd tests/unit/store && l'
alias fs='qf && yarn serve'
alias b='qf && npm run build'
alias bs='qb && export OFFSITE_DEV=true && export NODE_ENV='local' && nodemon server.js'
alias qr='qf && c src'
alias qu='qf && c tests/unit'
alias qi='qf && c ignore'
alias qc='qr && c components'
alias qv='qr && c views'
alias qe='qr && c store'
alias qsty='qr && c styles'

alias lqo='cd ~/MEGA/lq_other'

# AWS
ec2ip4=3.17.122.68;
alias eclq='ssh -i ~/.ssh/lq.pem ubuntu@lq-systems.com'
alias ectest='ssh -i ~/.ssh/MyKeyPair.pem ubuntu@3.14.142.251'
alias ecme='ssh -i ~/.ssh/MyKeyPair.pem ubuntu@$ec2ip4'
alias gecme='echo $ec2ip4 | pbcopy'

scpme() { scp -r -i ~/.ssh/MyKeyPair.pem "$1" ubuntu@3.17.122.68:~/; }

# Databases
alias startMongo='sudo mongod --fork --config /usr/local/etc/mongod.conf'

# VsCode
alias codeset='c ~/Library/Application\ Support/Code/User/ && code .'


# Git
alias p='git cp';
alias ac='git ac';
alias gs='git s';



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

c() { clear && printf "${MAGENTA}Folder Contents:${NORMAL}\n\n" && cd "$1" && colorls && printf "\n" ; }

l() { clear && printf "${MAGENTA}Folder Contents:${NORMAL}\n\n" && colorls && printf "\n" ; }

la() { clear && printf "${MAGENTA}Folder Contents:${NORMAL}\n\n" && colorls -a && printf "\n" ; }
l1() { clear && printf "${MAGENTA}Folder Contents:${NORMAL}\n\n" && colorls -1 && printf "\n" ; }

newExecutable () { echo "#"'!'"/usr/bin/env bash"  > "$1" && chmod +x "$1" }
codeExecutable () { newExecutable "$1" && code "$1" }
unpackTar() { tar xvzf "$1"; }
wJava() { fswatch -o "$1.java" | xargs -I % sh -c "clear; printf '\n\n\n\n\n\n\n${CYAN}File Output:${NORMAL}\n\n'; javac '$1.java'; java $1;" }
wNode() { fswatch -o "$1.js" | xargs -I % sh -c "clear; printf '\n\n\n\n\n\n\n${CYAN}File Output:${NORMAL}\n\n'; node '$1.js';" }
watchPerl() { watchFile "$1" "perl $1";}
watchNode() { watchFile "$1" "node $1";}
fr() { find . -name "$1" -print0 | xargs -0  perl "$2"; }
sleepAt() { echo pm-suspend | sudo at $1; }
au() {  "hello\n" ut && mkdir "$1" && touch "$1/README.md" && atom "$1/README.md"; }
printFilePath () {echo "$(cd "$(dirname "$1")"; pwd -P)/$(basename "$1")"}



