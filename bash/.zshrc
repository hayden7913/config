# use vim in for bash cli
set -o vi

# aliases and functions
source ~/.aliases.sh
source ~/.bash_profile

# Powerlevel9k prompts
source  ~/Software/powerlevel9k/powerlevel9k.zsh-theme
source $(dirname $(gem which colorls))/tab_complete.sh

POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  dir vcs newline status
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

POWERLEVEL9K_STATUS_ERROR_BACKGROUND='black'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='green'

POWERLEVEL9K_PROMPT_ADD_NEWLINE=false

POWERLEVEL9K_STATUS_CROSS=true
