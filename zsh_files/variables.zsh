##########################################
# Core Variables
##########################################
export PULSE_LATENCY_MSEC=30
export EDITOR='vim'
export HOMEBREW_NO_ANALYTICS=1
export JEKYLL_ENV=development

# NPM Varialbes
NPM_PACKAGES="$HOME/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"

# Setting up the Paths
COMPOSERPATH="$HOME/.composer"
TMUXIFIERPATH="$HOME/.tmuxifier"
GOPATH="$HOME/go"

# Setting up the Bin Paths
GOBINPATH="$GOPATH/bin"
COMPOSERBINPATH="$COMPOSERPATH/vendor/bin"
NPMBINPATH="$NPM_PACKAGES/bin"
TMUXIFIERBINPATH="$TMUXIFIERPATH/bin"
HOMEBIN="$HOME/bin"

# Build and Export the PATH 
export PATH="$GOBINPATH:$COMPOSERBINPATH:$TMUXIFIERBINPATH:$NPMBINPATH:$HOMEBIN:$PATH"
