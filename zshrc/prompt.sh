function git_branch_name() {
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo ' ('$branch')'
  fi
}

setopt PROMPT_SUBST
export PROMPT='%? %F{2}%m%f%F{green}:%f%F{10}%~%f%B%F{12}$(git_branch_name)%f%b $ '

