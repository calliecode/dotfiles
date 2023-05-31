case $- in
    *i*) ;;
      *) return;;
esac

PS1='$(prompt_ssh_host)\[\033[36;22m\]\w \[\033[33;22m\]$(git_prompt)\$ \[\033[37;0m\]'

alias ls='ls --color=auto'
alias grep='grep --color=auto'

export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export PATH="$PATH:$HOME/sts-scripts"
export ENV="$Home/.cargo/bin"
export STOW_DIR=~/dotfiles

alias xclip="xclip -selection clipboard"
alias x="xclip -selection clipboard"

git_prompt() {
  local branch="$(git symbolic-ref HEAD 2> /dev/null | cut -d'/' -f3-)"
  if [ -n "${branch}" ]
  then
    echo "[${branch}] "
  fi
}

prompt_ssh_host() {
  if [[ -n $SSH_CLIENT ]]
  then
    case $HOSTNAME in
      pudding) echo '⛓ ';;
      *) echo '☭ ';;
    esac
  fi
}
