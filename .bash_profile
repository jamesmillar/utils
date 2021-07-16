alias has="hasura --admin-secret abc123 "

reseed() {
  hasura seeds create $1 --admin-secret FV7boUTmPX4Fj94vFLtuT7tJ --endpoint https://venture-coopstg.azurefd.net --from-table $1
}

# Enable alias use by xargs - https://unix.stackexchange.com/questions/141367/have-xargs-use-alias-instead-of-binary
alias xargs='xargs '
alias reload="source ~/.bash_profile"

alias ssh-tyney="ssh -i ~/.ssh/tyney-app.pem bitnami@13.239.150.66"

alias link="ln -s /srv/www/* ~/Sites/"

alias ll="ls -laGT"
alias clr="clear && printf '\e[3J'"
alias sites="cd ~/Sites/;pwd;ll;"
alias desk="cd ~/Desktop;pwd;ll;"
#alias docs="cd ~/Documents;pwd;ll;"

alias apache='sudo apachectl configtest &&  sudo apachectl '

alias restart-usb='sudo launchctl stop com.apple.usbd && sudo launchctl start com.apple.usbd'


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

alias ftp-on='sudo -s launchctl load -w /System/Library/LaunchDaemons/ftp.plist'
alias ftp-off='sudo -s launchctl unload -w /System/Library/LaunchDaemons/ftp.plist'

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

