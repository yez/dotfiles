# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[red]%}♥%{$reset_color%}"

PROMPT='
%{$fg[yellow]%}%t%{$fg[red]%}|%{$reset_color%}%{$fg[cyan]%}%~%{$reset_color%}%{$fg[red]%}|%{$reset_color%}$(git_prompt_info)%{$fg[cyan]%}⇒%{$reset_color%} '


COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git heroku rails osx jakeonrails)

source $ZSH/oh-my-zsh.sh

# Source RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Terminal tab title:
precmd () { print -Pn "\e]2;%~\a" } 

# Rails and Bash aliases
alias ll='ls -hal'
alias rake='noglob bundle exec rake'
alias rspec='bundle exec rspec'
alias devlog='tail -f log/development.log'
alias testlog='tail -f log/test.log'
alias grepoku='heroku logs --tail | grep '

alias ..='cd ..'
alias cd..='cd ..'

alias g='git status'

alias hps='heroku ps'
alias hscale='heroku ps:scale'
alias hcon='heroku run console'
alias hrake='heroku run rake'
alias hlogs='heroku logs --tail'
alias newrelic='heroku addons:open newrelic'
alias hopen='heroku addons:open'
alias h='heroku'
alias hpush='git push heroku HEAD:master'
alias opush='git push origin HEAD'

# Add custom git commands to the path
export PATH=~/scripts/bin:$PATH

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Ensure brew installed apps have precedence (important for Postgres)
export PATH=/usr/local/bin:$PATH
PATH=$PATH:/usr/local/pgsql/bin

export PGDATA=/usr/local/pgsql/data
export DYLD_LIBRARY_PATH=/usr/local/pgsql/lib

test -r /sw/bin/init.sh && . /sw/bin/init.sh

export PATH=$PATH:/usr/local/git/bin
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/pgsql/bin:$PATH"
export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:$DYLD_LIBRARY_PATH"
export DYLD_LIBRARY_PATH="/usr/local/pgsql/lib:$DYLD_LIBRARY_PATH"
export PGDATA="/usr/local/pgsql/data"

alias ll='ls -lah '
alias xml2xsd='java -jar ~/trang/trang.jar'

export EDITOR=vi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
