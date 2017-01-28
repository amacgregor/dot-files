# Path to your oh-my-zsh configuration.
ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="allanmacgregor"

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
if [ -e $POWERLINE_PATH/powerline/bindings/zsh/powerline.zsh ]; then
     source $POWERLINE_PATH/powerline/bindings/zsh/powerline.zsh
fi 

##########################################
# Environment setups
##########################################

# Python with PyEnv setup
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# Ruby with RbEnv setup
eval "$(rbenv init -)"

# Color Scheme for Ruby // Requires Base16 Shell
$HOME/.config/base16-shell/base16-tomorrow.dark.sh

##########################################
# Experimental  
##########################################

# OPAM configuration
#. /home/amacgregor/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# Run Fortune on a new terminal
#fortune quotes 
