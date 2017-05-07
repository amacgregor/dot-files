#########################################
# Allan MacGregor's ZSH configuration 
##########################################

# Path to your oh-my-zsh configuration.
ZSH=~/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="allanmacgregor"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to the command execution time stamp shown 
# in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew git mix git-flow composer sudo docker)

##########################################
# Load External configurationf files
##########################################
# Load oh-my-zsh
if [ -e $ZSH/oh-my-zsh.sh ]; then
     source $ZSH/oh-my-zsh.sh
fi 

# Load the secrets file
if [ -e ~/.secrets ]; then
     source ~/.secrets
fi 

# Load the FZF completion
if [ -e ~/.fzf.zsh ]; then
     source ~/.fzf.zsh
fi 

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

# Load the Powerline Bindings
#if [ -e $POWERLINE_PATH/powerline/bindings/zsh/powerline.zsh ]; then
#     source $POWERLINE_PATH/powerline/bindings/zsh/powerline.zsh
#fi 

##########################################
# Environment setups
##########################################

# Python with PyEnv setup
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# Ruby with RbEnv setup
eval "$(rbenv init -)"

# Color Scheme for Ruby // Requires Base16 Shell
#$HOME/.config/base16-shell/base16-tomorrow.dark.sh

# Elixir Version information
ELIXIR_VERSION=$(elixir -v | grep -o 'Elixir \d.\d.\d' | grep -o '\d.\d.\d')

# Tmuxifier Autocomplete
eval "$(tmuxifier init -)"

##########################################
# Experimental  
##########################################

# OPAM configuration
#. /home/amacgregor/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# Motivation reminder
echo "2017 12 31" | awk '{dt=mktime($0 " 00 00 00")-systime(); print "There are " int(dt/86400/7) " weeks left until the year ends. What will you do?";}'

# Run Fortune on a new terminal
#fortune quotes 

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
