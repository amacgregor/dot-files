#########################################
# Allan MacGregor's ZSH configuration 
##########################################

# Load Zgen Plugin Manager
source "${HOME}/.zgen/zgen.zsh"

# Load oh-my-zsh plugins 
if ! zgen saved; then

  # Plugins
  zgen oh-my-zsh
  zgen oh-my-zsh plugins/brew
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/mix

  zgen load sobolevn/wakatime-zsh-plugin
  zgen load /Users/amacgregor/Dotfiles/allanmacgregor.zsh-theme

  # generate the init script from plugins above
  zgen save
fi

## Path to your oh-my-zsh configuration.
#ZSH=~/.oh-my-zsh
#
## Set name of the theme to load.
#ZSH_THEME="allanmacgregor"
#
# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to the command execution time stamp shown 
# in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

## Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
## Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
## Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(gpg-agent brew pyenv git mix git-flow composer sudo docker wakatime)
#
###########################################
## Load External configurationf files
###########################################

# Load the secrets file
if [ -e ~/.secrets ]; then
     source ~/.secrets
fi 

## Load the FZF completion
#if [ -e ~/.fzf.zsh ]; then
#     source ~/.fzf.zsh
#fi 

# Load the Variables file
if [ -e ~/.zsh_files/variables.zsh ]; then
     source ~/.zsh_files/variables.zsh
fi 

# Load the Aliases file
if [ -e ~/.zsh_files/aliases.zsh ]; then
     source ~/.zsh_files/aliases.zsh
fi 

# Load the Functions file
if [ -e ~/.zsh_files/functions.zsh ]; then
     source ~/.zsh_files/functions.zsh
fi 

###########################################
## Environment setups
###########################################
#
## Python with PyEnv setup
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
#
## Ruby with RbEnv setup
#eval "$(rbenv init -)"
#
## Color Scheme for Ruby // Requires Base16 Shell
##$HOME/.config/base16-shell/base16-tomorrow.dark.sh

# Elixir Version information
ELIXIR_VERSION=$(elixir -v | grep -o 'Elixir \d.\d.\d' | grep -o '\d.\d.\d')

## Tmuxifier Autocomplete
#eval "$(tmuxifier init -)"
#
## Requierd for gpg support on commits
#export GPG_TTY="$(tty)"

export HOMEBREW_GITHUB_API_TOKEN=75b18c0f158dd334c5690ad9bbc2dfc3c68cc8b7

# PHPBrew support 
source /Users/amacgregor/.phpbrew/bashrc

###########################################
## Experimental  
###########################################

# OPAM configuration
#. /home/amacgregor/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

## Motivation reminder
#echo "2019 12 31" | awk '{dt=mktime($0 " 00 00 00")-systime(); print "There are " int(dt/86400/7) " weeks left until the year ends. What will you do?";}'
#
## Run Fortune on a new terminal
##fortune quotes 

# Optimized nvm loading
export NVM_DIR="$HOME/.nvm"
nvm_load () {
  . $NVM_DIR/nvm.sh
  . $NVM_DIR/bash_completion
  . <(gotodir --completion)
}

# Force aliases for nvm, node and npm
alias node='unalias nvm; unalias node; unalias npm; nvm_load; node $@'
alias npm='unalias nvm; unalias node; unalias npm; nvm_load; npm $@'
alias nvm='unalias nvm; unalias node; unalias npm; nvm_load; nvm $@'
alias to='nvm_load; . gotodir $@'

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
