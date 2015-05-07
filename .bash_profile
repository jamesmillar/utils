alias link="ln -s /srv/www/* ~/Sites/"

alias ll="ls -laGT"
alias sites="cd ~/Sites/;pwd;ll;"
alias desk="cd ~/Desktop;pwd;ll;"
alias docs="cd ~/Documents;pwd;ll;"

alias apache='sudo apachectl configtest &&  sudo apachectl '

alias gs='git status '
alias gp='git pull '
alias gu='git push '
alias gf='git fetch '
alias ga='git add '
alias gb='git branch '
alias gm='git merge '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '

alias grm='git ls-files --deleted -z | xargs -0 git rm'		# git rm (remove) all deleted files

alias got='git '
alias get='git '

# Remove Node and all Node Modules from system
alias uninstall-node="npm ls -gp | awk -F/ '/node_modules/ && !/node_modules.*node_modules/ {print $NF}' | xargs npm -g rm"

# Create command line shortcut to start Sublime Text
alias link-sublime='ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime'

# Git command line completion
source ~/git-completion.bash

# Grunt command line completion
eval "$(grunt --completion=bash)"

export PATH="$HOME/bin:$HOME/.composer/vendor/bin:$PATH"

link
docs

