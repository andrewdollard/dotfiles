alias gti='git'
alias gh='git hist -n20'
alias gs='git status'
alias gd='git diff'
alias gds='git diff --staged'
alias gcw="git add . && git commit -m 'wip'"
alias gmm='git checkout master && git pull && git checkout - && GIT_MERGE_AUTOEDIT=no git merge master'
alias gb="git for-each-ref --sort='-committerdate' --format='%(committerdate:short)%20%20%(refname:lstrip=2)' refs/heads | head -n 20"

alias sed='gsed'
alias tree='lsd --tree'

alias ls='lsd'
alias ll='lsd -lah'
alias sed='gsed'

alias pod='arch -arm64 pod'

