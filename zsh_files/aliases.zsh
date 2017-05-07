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

##########################################
# Utility aliases
##########################################
alias ll="ls -lhA"
alias svim="sudo vim"
alias c='pygmentize -O style=monokai -f console256 -g'
alias history-stat="history | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"
alias go_write="cd ~/Projects/Writing"

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


