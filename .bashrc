
PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/usr/X11/bin # for running specs locally
alias g='git status'
alias l='ls'
alias ll='ls -lah'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export EDITOR=vim
export ALGEMS_PASSWORD='o#^*ZNs4xO4JeAPAUUk2'

alias heroku_psql='~/psql_heroku_follower.sh'
alias ci='ssh ubuntu@ci.verticalbrands.net'
alias al_test='RAILS_ENV=test rake db:drop && RAILS_ENV=test rake db:create && psql -f db/structure.sql apartmentlist_test'
export FOREX_SERVER='ec2-52-37-94-188.us-west-2.compute.amazonaws.com'
export FOREX_REFINER_SERVER='ec2-54-149-22-98.us-west-2.compute.amazonaws.com'

export PATH="$HOME/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$PATH"
export PATH="$PATH:./node_modules/.bin"

# added by travis gem
[ -f /Users/jakeyesbeck/.travis/travis.sh ] && source /Users/jakeyesbeck/.travis/travis.sh

if [[ "Linux" -eq $(uname -s) ]]
  then xmodmap -quiet -e "pointer = 1 25 3 4 5 6 7 8 9 0"
fi
