export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

export PATH=$PATH:/usr/X11/bin # for running specs locally
alias g='git status'
alias l='ls'
alias ll='ls -lah'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export EDITOR=vim

export PATH="$HOME/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$PATH"
export PATH="$PATH:./node_modules/.bin"

# added by travis gem
[ -f /Users/jakeyesbeck/.travis/travis.sh ] && source /Users/jakeyesbeck/.travis/travis.sh

source .prompt_config
if [[ "Linux" = $(uname -s) ]]
  then xmodmap -quiet -e "pointer = 1 25 3 4 5 6 7 8 9 0"
fi

# Add pip3 to PATH for scripting.
export PATH="$PATH:$HOME/.local/bin"
