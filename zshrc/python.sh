if [ "$(command -v pyenv)" ]; then
  eval "$(pyenv init -)"
  PYTHON_BIN_PATH="$(python3 -m site --user-base)/bin"
  PATH="$PATH:$PYTHON_BIN_PATH"
fi

