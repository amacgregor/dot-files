# Path to your oh-my-zsh configuration.
ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="allanmacgregor"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often to auto-update? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to the command execution time stamp shown 
# in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew git mix git-flow composer pyenv rake-fast python sudo aws debian docker git-extras)

source $ZSH/oh-my-zsh.sh

if [ -e ~/.secrets ]; then
     source ~/.secrets
fi 



##################
# Session Variables
##################
export PULSE_LATENCY_MSEC=30
export EDITOR='vim'
export HOMEBREW_NO_ANALYTICS=1
export PATH="~/.composer/vendor/bin:/home/amacgregor/bin:$PATH"
export PATH="/Users/amacgregor/anaconda/bin:$PATH"
export GOPATH="/Users/amacgregor/go"
export PATH=$GOPATH/bin:$PATH
export PATH="$HOME/.tmuxifier/bin:$PATH"

#export DOCKER_HOST=tcp://127.0.0.1:2376
#export DOCKER_CERT_PATH=/Users/amacgregor/.dinghy/certs
#export DOCKER_TLS_VERIFY=1

#eval "$(rbenv init -)"
#export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
#export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"

export JEKYLL_ENV=development

# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# custom aliases
alias ske='PULSE_LATENCY_MSEC=30 /usr/bin/skype'
alias jksrv='jekyll serve --watch --drafts --trace'
alias ptsleep='pm-suspend'
alias reload!="source ~/.zshrc"
# alias docker="sudo docker"

# Phpfarm/Laravel/Magento aliases
alias spf='/opt/phpfarm/inst/bin/switch-phpfarm'
alias art="php artisan"
alias spec="bin/phpspec"
alias bhat="bin/behat"
alias composer='php -n -d xdebug.enable=0 /Users/amacgregor/scripts/composer.phar'
alias spec="bin/phpspec"
alias bhat="bin/behat"

##################
# Easier Navigation aliases
##################
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

##################
# Utility aliases
##################
alias ll="ls -lhA"
alias svim="sudo vim"
alias c='pygmentize -O style=monokai -f console256 -g'
alias history-stat="history | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"
alias tmuxl='tmux list-sessions'
alias tmuxa='tmux attach'

##################
# Tmuxifier aliases
##################
alias elixir-ide="tmuxifier load-session elixir-ide"

# Git aliases
#alias gpub = "!git push -u origin $(git branch-name)"
#alias gunpub = "!git push origin :$(git branch-name)"
#alias master-cleanse = !"git checkout master && git branch --merged | xargs git branch -d; git branch -r --merged origin/master | sed 's/ *origin\///' | grep -v '^master$' | xargs -I% git push origin :% 2>&1 | grep --colour=never 'deleted'"
#
## Git-mainle aliases
#alias topic-start = '!branch=$1; git checkout master; git pull; git checkout -b "$branch" master'
#alias topic-pull = '!branch=$(git branch-name); git checkout master; git pull; git checkout "$branch"; git rebase --no-ff master'
#alias topic-push = '!branch=$(git branch-name); git push -u origin "$branch"'


##################
# Experimental
##################

#export GPODDER_DOWNLOAD_DIR=/mnt/Media02/Podcasts/
#export PATH="/usr/local/sbin:$PATH"
export PATH=/usr/local/bin:/usr/local/sbin:$PATH:/Users/amacgregor/bin

#if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
#    source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
#fi

# Load the powerline bindings
source /Users/amacgregor/Projects/Github/powerline/powerline/bindings/zsh/powerline.zsh

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# OPAM configuration
. /home/amacgregor/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


#export PATH="$(brew --prefix homebrew/php/php54)/bin:$PATH"
export PATH="/usr/local/bin/npm:$PATH"

# Make Docker toolbox work 
#eval "$(docker-machine env default)"
#

# Vim mode
#bindkey -v
#export KEYTIMEOUT=1

#PHP-version switcher
#source $(brew --prefix php-version)/php-version.sh && php-version 5

# Run Fortune on a new terminal
fortune quotes 

# Base16 Shell
#BASE16_SHELL="$HOME/.config/base16-shell/base16-tomorrow.dark.sh"
#[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
#

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)" ]

$HOME/.config/base16-shell/base16-tomorrow.dark.sh

NPM_PACKAGES=/Users/amacgregor/.npm-packages
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"



#########################
# Environment setups
#########################

# Python with PyEnv setup
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# Ruby with RbEnv setup
eval "$(rbenv init -)"

# Man Command colorizer
man() {
	env \
		LESS_TERMCAP_md=$'\e[1;36m' \
		LESS_TERMCAP_me=$'\e[0m' \
		LESS_TERMCAP_se=$'\e[0m' \
		LESS_TERMCAP_so=$'\e[1;40;92m' \
		LESS_TERMCAP_ue=$'\e[0m' \
		LESS_TERMCAP_us=$'\e[1;32m' \
			man "$@"
}
