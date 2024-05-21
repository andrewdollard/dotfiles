export PATH="$HOME/scripts:$HOME/brew/bin:/usr/bin:/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:$PATH"

### Vim mode
bindkey -v
export EDITOR=vi


### History settings
HISTSIZE=100000
SAVEHIST=$HISTSIZE
bindkey '^R' history-incremental-search-backward
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY


### Other settings
source $HOME/dotfiles/zshrc/aliases.sh
source $HOME/dotfiles/zshrc/prompt.sh
source $HOME/dotfiles/zshrc/configs.sh

source $HOME/dotfiles/zshrc/java.sh
source $HOME/dotfiles/zshrc/node.sh
source $HOME/dotfiles/zshrc/python.sh
source $HOME/dotfiles/zshrc/ruby.sh

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  source $HOME/dotfiles/zshrc/linux.sh
fi

if [[ -f $HOME/dotfiles/local.sh ]]; then
  source $HOME/dotfiles/local.sh
fi

# [ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"


autoload -U compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"



