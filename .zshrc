export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="underline"
bindkey '^ ' autosuggest-accept

export JAVA_HOME="/usr/local/opt/openjdk"
export PATH="$JAVA_HOME/bin:$PATH"
alias python=/usr/local/bin/python3
alias pip=/usr/local/bin/pip3

# ZPLUG
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme
zplug "zsh-users/zsh-autosuggestions", use:zsh-autosuggestions.zsh, from:github

# Install plugins if there are plugins that have not been installed
if ! zplug check; then # --verbose
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load #--verbose
