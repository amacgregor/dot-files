##########################################
# Core Variables
##########################################
export PULSE_LATENCY_MSEC=30
export EDITOR='vim'
export HOMEBREW_NO_ANALYTICS=1
export JEKYLL_ENV=development

##########################################
# NPM Varialbes
##########################################
NPM_PACKAGES="$HOME/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"

##########################################
# Setting up the Paths
##########################################
COMPOSERPATH="$HOME/.composer"
GOPATH="$HOME/go"
POWERLINE_PATH="$HOME/Projects/Utilities/powerline"
BASE16_SHELL="$HOME/.config/base16-shell/"

##########################################
# Setting up the Bin Paths
##########################################
GOBINPATH="$GOPATH/bin"
COMPOSERBINPATH="$COMPOSERPATH/vendor/bin"
NPMBINPATH="$NPM_PACKAGES/bin"
HOMEBIN="$HOME/bin"
SBINPATH="/usr/local/sbin"

##########################################
# Build and Export the PATH 
##########################################
export PATH="$GOBINPATH:$COMPOSERBINPATH:$NPMBINPATH:$HOMEBIN:$SBINPATH:$PATH"


##########################################
# Experimental
##########################################
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# SSH
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# PHP-version switcher
# source $(brew --prefix php-version)/php-version.sh && php-version 5
