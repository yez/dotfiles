export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

export PATH=$PATH:/usr/X11/bin # for running specs locally
alias g='git status'
alias l='ls'
alias ll='ls -lah'

export EDITOR=vim

export PATH="$PATH:./node_modules/.bin"

# added by travis gem
[ -f /Users/jakeyesbeck/.travis/travis.sh ] && source /Users/jakeyesbeck/.travis/travis.sh

source ~/.prompt_config
if [[ "Linux" = $(uname -s) ]]
  then xmodmap -quiet -e "pointer = 1 25 3 4 5 6 7 8 9 0"
fi

# Add pip3 to PATH for scripting.
export PATH="$PATH:$HOME/.local/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export_from_env() {
  set -o allexport
  source $1
  set +o allexport
}

cd_and_env() {
  cd $1
  if [[ -f '.env' ]]; then
    export_from_env '.env'
  fi
}

alias cd='cd_and_env'
