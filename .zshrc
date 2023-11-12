# zsh setup {{{
export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="robbyrussell"
ZSH_THEME="gruvbox"
# ZSH_THEME="spaceship"
zstyle ':omz:update' mode auto      # update automatically without asking
plugins=(git)
source $ZSH/oh-my-zsh.sh
# }}}

# zplug {{{
# install zplug if not exists
if [[ ! -d ~/.zplug ]];then
  git clone https://github.com/zplug/zplug ~/.zplug
fi
source ~/.zplug/init.zsh

# zplug plugins {{{
zplug "zsh-users/zsh-autosuggestions", use:zsh-autosuggestions.zsh, from:github
zplug "zsh-users/zsh-syntax-highlighting", defer:2
# }}}

# install plugins, prompt user input
if ! zplug check --verbose; then
  printf "Install zplug plugins? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
# }}}

# exported variables {{{
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR='vim'
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="underline"
#export SPACESHIP_PROMPT_ASYNC=false
# }}}

# load zplug plugins
zplug load

# aliases {{{
alias python=python3
alias vim=nvim
alias d="kitty +kitten diff"
alias clip="kitty +kitten clipboard"
# }}}

# keybindings {{{
bindkey '^ ' autosuggest-accept
# }}}

# starship prompt {{{
# this must be placed at the end of ~/.zshrc
function starship_exists {
  starship --version >> /dev/null
}

if ! starship_exists; then
  printf "Install starship prompt? [y/N]: "
  if read -q; then
    curl -sS https://starship.rs/install.sh | sh
  fi
fi

if starship_exists; then
  eval "$(starship init zsh)"
fi
# }}}
