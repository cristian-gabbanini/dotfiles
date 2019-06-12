export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# Git branch in prompt.

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

show_arrow() {
 echo '\n\[\033[36m\]→ \'
}

# Aliases
alias gs="git status"
alias gl="git lol"
alias vd="vagrant destroy"
alias vi="vagrant init"
alias vu="vagrant up"
alias vs="vagrant ssh"

export ps1="\u@\h \w\[\033[32m\]\$(parse_git_branch)\$(show_arrow)[\033[00m\]"
source /usr/local/etc/bash_completion.d/git-completion.bash
