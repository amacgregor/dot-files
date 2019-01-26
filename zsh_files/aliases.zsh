##########################################
# Core Aliases 
##########################################
alias ske='PULSE_LATENCY_MSEC=30 /usr/bin/skype'
alias jksrv='jekyll serve --watch --drafts --trace'
alias ptsleep='pm-suspend'

##########################################
# zsh/oh-my-zsh aliasies
##########################################
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias reload!="source ~/.zshrc"

##########################################
# dotfiles aliasies
##########################################
alias dotconfig="cd ~/Dotfiles && vim"

##########################################
# Easier Navigation aliases
##########################################
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias to=". gotodir"

##########################################
# Utility aliases
##########################################
alias ll="exa -bghHliS --git"
alias svim="sudo vim"
alias c='pygmentize -O style=monokai -f console256 -g'
alias history-stat="history | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"
alias please='sudo $(fc -ln -1)'

##########################################
# Deprecated
##########################################
#alias go_write="cd /Volumes/Workspace/Writing"
#alias go_work="cd /Volumes/Workspace/Work"
#alias go_workspace="cd /Volumes/Workspace"
#alias go_browze="cd /Volumes/Workspace/Work/Clients/DailyGrabs"
#alias ll="ls -lhA"
#alias pyenv='CFLAGS="-I$(brew --prefix openssl)/include" LDFLAGS="-L$(brew --prefix openssl)/lib" pyenv'

##########################################
# Tmux/Tmuxifier
##########################################
alias tmuxl='tmux list-sessions'
alias tmuxa='tmux attach'
alias elixir-ide="tmuxifier load-session elixir-ide"

##########################################
# Git  
##########################################
alias gpristine='git reset --hard && git clean -dfx'

##########################################
# Elixir/Erlang 
##########################################
alias miex='iex -S mix'

##########################################
# Experimental
##########################################
# Git aliases
#alias gpub = "!git push -u origin $(git branch-name)"
#alias gunpub = "!git push origin :$(git branch-name)"
#alias master-cleanse = !"git checkout master && git branch --merged | xargs git branch -d; git branch -r --merged origin/master | sed 's/ *origin\///' | grep -v '^master$' | xargs -I% git push origin :% 2>&1 | grep --colour=never 'deleted'"

# Git-mainle aliases
#alias topic-start = '!branch=$1; git checkout master; git pull; git checkout -b "$branch" master'
#alias topic-pull = '!branch=$(git branch-name); git checkout master; git pull; git checkout "$branch"; git rebase --no-ff master'
#alias topic-push = '!branch=$(git branch-name); git push -u origin "$branch"'

# all in one homebrew, gem update commands
alias brewup='brew update && brew upgrade && brew cleanup'
alias gemup='gem update --system && gem update && gem cleanup'
alias npmup='npm -g cache clean && npm -g update && npm-check-updates -u && npm install'
alias sysup='sudo softwareupdate -i -a'
alias upall='sysup && brewup && gemup && npmup'
