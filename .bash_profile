export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# Git branch in prompt.

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Aliases
alias gs="git status"
alias gl="git lol"

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\n\[\033[36m\]→ \[\033[00m\]"
source /usr/local/etc/bash_completion.d/git-completion.bash
