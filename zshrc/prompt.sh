setopt PROMPT_SUBST

function git_branch_name() {
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo ' ('$branch')'
  fi
}

export PROMPT='%? %F{2}%m%f%F{green}:%f%F{10}%~%f%B%F{12}$(git_branch_name)%f%b $ '

if [ "$(command -v pyenv)" ]; then
  if [[ "$(pyenv virtualenvs)" == *"* $(pyenv version-name) "* ]]; then
    export PROMPT='($(pyenv version-name)) '$PROMPT
  fi

fi
