### ZSH settings
setopt auto_pushd


### Vim mode
bindkey -v


### History
bindkey '^R' history-incremental-search-backward
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY


### Autocomplete
autoload -U compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'


### Other settings
source $HOME/dotfiles/zshrc/aliases.sh
source $HOME/dotfiles/zshrc/aws.sh
source $HOME/dotfiles/zshrc/configs.sh
source $HOME/dotfiles/zshrc/prompt.sh
source $HOME/dotfiles/zshrc/git.sh

source $HOME/dotfiles/zshrc/java.sh
source $HOME/dotfiles/zshrc/node.sh
source $HOME/dotfiles/zshrc/python.sh
source $HOME/dotfiles/zshrc/ruby.sh

if [[ $(uname -s) == 'Linux' ]]; then
  source $HOME/dotfiles/zshrc/linux.sh
fi

if [[ $(uname -s) == 'Darwin' ]]; then
  source $HOME/dotfiles/zshrc/mac.sh
fi

if [[ -f $HOME/dotfiles/local.sh ]]; then
  source $HOME/dotfiles/local.sh
fi


