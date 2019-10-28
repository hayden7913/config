# inbox / temp
alias rdj='python manage.py runserver'
alias pm='python manage.py'

alias ws='webstorm'
alias sup='/bin/bash /Users/hayden/MEGA/startup/startup.sh';
alias fp='nohup /usr/bin/ssh -i /Users/hayden/.ssh/MyKeyPair.pem -nNT -R  3946:localhost:3946 ubuntu@$ec2ip4 &'
alias autofp='autossh -M 20000 -f -nNT -i /Users/hayden/.ssh/MyKeyPair.pem -R  3946:localhost:3946 ubuntu@$ec2ip4'  
alias tfp='ecme node post/postman.js'
alias checkfp='ecme sudo lsof -i | grep sshd' 
alias kat='pygmentize -f terminal'


# /Users/hayden/Library/Application Support/Steam/steamapps/common/dota 2 beta/game/dota/replays 

funcNamePrint() { ggrep -oP "\w+(?=\s\=.*=>)" $1 }
gal(){ grep $1 ~/.aliases.sh }


# Docker
alias dc='docker-compose'
alias ds='docker service'
alias dd="docker stack deploy -c docker-compose.yml"
alias dp="docker push"
alias dps="docker ps"
alias dim="docker images"
alias db="docker build -t"

# Power management
alias sdn='sudo shutdown -h now'
alias sn='pmset sleepnow'

# Misc
alias python='python3'
alias r='clear'
alias lb=". ~/.zshrc"
alias wb="vim ~/.aliases.sh"
alias rd='touch README.md'
alias pxg='ps ax | grep -i'

# Navigation 
alias u='cd ../ && l'
alias uu='cd ../../ && l'
alias 3u='cd ../../../ && l'
alias com='cd src/components'

# Node
alias ns='nodemon server.js'

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
alias rjs='cd /Users/hayden/MEGA/inbox/Reliable\ JavaScript\ code/Ch\ 02\ code/DI && l'
alias fw='cd /Users/hayden/MEGA/other_lq/firmware && l'
alias lqo='cd /Users/hayden/MEGA/other_lq && l'
alias dk='cd ~/Desktop && l'
alias doc='cd ~/Documents && l'
alias dn='cd ~/Downloads && l'
alias mg='cd ~/MEGA && l'
alias ut='cd ~/MEGA/utils && l'
alias cf='cd ~/MEGA/config && l'
alias sb='cd ~/MEGA/sandbox && l'
alias sbn='cd ~/MEGA/sandbox/node && l'
alias sbna='cd ~/MEGA/sandbox/node/archive && l'
alias sc='cd ~/MEGA/sandbox/node/scratch && l'
alias tst='cd ~/MEGA/sandbox/node/scratch/test && l'
alias dkr='cd ~/MEGA/sandbox/docker && l'
alias iot='cd ~/MEGA/sandbox/iot && l'
alias sbj='cd ~/MEGA/sandbox/java && l'
alias sbp='cd ~/MEGA/sandbox/python && l'
alias sbc='cd ~/MEGA/sandbox/cpp && l'
alias sbml='cd ~/MEGA/sandbox/machine-learning && l'
alias vr='cd ~/MEGA/vendor-repos && l'
alias boil='cd ~/MEGA/boilerplates/ && l'
alias prose='cd ~/MEGA/prose && l'

# Repos
alias ty='cd ~/MEGA/projects/tiny && l'
alias pf='cd ~/MEGA/projects/portfolio3 && l'
alias pr='cd ~/MEGA/projects && l'
alias sch='cd /Users/hayden/MEGA/projects/schedule && l'
alias lqd='cd ~/MEGA/lq_design/ && l'
alias lq='cd ~/MEGA/lq_app/ && l'
alias qf='cd ~/MEGA/lq_app/frontend && l'
alias qb='cd ~/MEGA/lq_app/backend && l'
alias pcb='cd ~/MEGA/PCBflow && l'
alias tt='cd ~/MEGA/projects/tomato-tracker && l'
alias tto='cd ~/MEGA/tf/tomato-tracker-old && l'
alias pt='cd ~/MEGA/tf/PomTracker-Capstone'

# LQ Aliases

export PILQIP="25.81.56.126"
scplq() { sshpass -p 'raspberry' scp -r "$1" pi@$PILQIP:/home/pi }
alias mountLq="sshfs pi@$PILQIP:/home/pi/ /Users/hayden/mount"
alias pilq="sshpass -p 'raspberry' ssh pi@$PILQIP"

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


# SSH

export ec2ip4=18.189.29.126;

alias mountLq="sshfs pi@$PILQIP:/home/pi/ /Users/hayden/mount"
alias mountEC="sudo sshfs ubuntu@$ec2ip4:/home/ubuntu/ /Users/hayden/mount -o IdentityFile=/Users/hayden/.ssh/MyKeyPair.pem -o allow_other"
alias ecme='ssh -i ~/.ssh/MyKeyPair.pem ubuntu@$ec2ip4'
scpme() { scp -r -i ~/.ssh/MyKeyPair.pem "$1" ubuntu@$ec2ip4:~/; }
alias gecme='echo $ec2ip4 | pbcopy'
alias eclq='ssh -i ~/.ssh/lq.pem ubuntu@lq-systems.com'

export PILOIP="10.0.0.25"
alias pilo="sshpass -p 'raspberry' ssh pi@$PILOIP"
scplo() { sshpass -p 'raspberry' scp -r "$1" pi@$PILOIP:~/hayden }
alias mountLo="sshfs pi@$PILOIP:/home/pi/hayden /Users/hayden/mount"

alias shm="sshpass -p 'pdubuno' ssh hayden@10.0.0.159"

# Databases
alias startMongo='sudo mongod --fork --config /usr/local/etc/mongod.conf'

# VsCode
alias codeset='c ~/Library/Application\ Support/Code/User/ && code .'

# Git
alias p='git cp';
alias ac='git ac';
alias gs='git s';
delb(){ git branch -d $1 }

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


srm () { for arg in "$@"; do trash "$arg"; done; l }
srm () { for arg in "$@"; do trash "$arg"; done; l }
dle(){ trash *; l }

l () {
    printf "\n"
    if [ $# -eq 0 ] 
        then
            clear
            printf "${MAGENTA}Current Directory:${NORMAL}\n\n"
            colorls
            printf "\n"
        else
            printf "${MAGENTA}Showing $1:${NORMAL}\n\n"
            colorls $1
            printf "\n"
    fi
}

subRecursive() {
    echo $1 $2
    find ./ -type f -exec perl -p -i -e "s/$1/$2/g" {} ";"
}

refactorFileName() {
    match=$1
   # match=$(find . -path ./node_modules -prune -o -type f -name "$1" -print)
    dir=$(dirname $match)
    newFile="$dir/$2"
    mv $match $newFile
    oldBasename=$(basename $match)
    newBasename=$2
    #  %.* removes anything after the last '.' (parameter expansion)
    oldFileName=${oldBasename%.*}
    newFileName=${newBasename%.*}
    subRecursive $oldFileName  $newFileName
}

# scratch
# is megasync running ?   sudo lsof -i | grep -i -o megaclien | wc -l 
