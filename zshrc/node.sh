if [[ $(command -v npm) ]]; then
  export PATH="$PATH:$(npm get prefix -g)/bin"
fi


# NPM
# if [ "$(command -v jenv)" ]; then
#   NPM_PACKAGES="${HOME}/.npm-packages"
#   export PATH="$PATH:$NPM_PACKAGES/bin"
#   # Preserve MANPATH if you already defined it somewhere in your config.
#   # Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
#   export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
#   # expor NVM_DIR="$HOME/.nvm"
#   # [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#   # [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# fi

export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

lazy_load_nvm() {
  unset -f node nvm
  export NVM_DIR=~/.nvm
  [[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
}

node() {
  lazy_load_nvm
  node $@
}

nvm() {
  lazy_load_nvm
  node $@
}

# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


