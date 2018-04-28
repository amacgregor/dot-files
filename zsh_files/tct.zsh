# List of accounts to read the last tweet from, comma separated
# The first in the list is read by the party parrot.
export TTC_BOTS='tinycarebot,selfcare_bot,magicrealismbot'

# Use this to have a different animal say a message in the big box.
export TTC_SAY_BOX='ironman'

# List of folders to look into for `git` commits, comma separated.
export TTC_REPOS='/Volumes/Workspace/Work'

# The max directory-depth to look for git repositories in
# the directories defined with `TTC_REPOS`. Note that the deeper
# the directory depth, the slower the results will be fetched.
export TTC_REPOS_DEPTH=5

# Location/zip code to check the weather for. Both 90210 and "San Francisco, CA"
# _should_ be ok (the zip code doesn't always work -- use a location
# first, if you can). It's using weather.service.msn.com behind the curtains.
export TTC_WEATHER='Toronto'

# Set to false if you're an imperial lover <3
export TTC_CELSIUS=true

# Unset this if you _don't_ want to use Twitter keys and want to
# use web scraping instead.
export TTC_APIKEYS=true

# Refresh the dashboard every 20 minutes.
export TTC_UPDATE_INTERVAL=5

# Turn off terminal title
export TTC_TERMINAL_TITLE=false

# Twitter api keys
export TTC_CONSUMER_KEY='YlOcdb6zBGXi8kCkh8CxDQaex'
export TTC_CONSUMER_SECRET='YlOcdb6zBGXi8kCkh8CxDQaex'
export TTC_ACCESS_TOKEN='16826115-BdcTs6p81ZbvI0x2loCqN8ItF4abnwSBtIGvDDtJT'
export TTC_ACCESS_TOKEN_SECRET='tv4NHUSuhAdqZPS3QEwN6h4ITCOEsBlXST8oZ55t8t9yF'

# Note: in tiny-terminal-care < 1.0.7, the recommended variables for the Twitter
# API keys were the ones before. As of 1.0.8, they are deprecated
# (because the names are too generic), but will still be supported
# until the next major version.
export CONSUMER_KEY='YlOcdb6zBGXi8kCkh8CxDQaex'
export CONSUMER_SECRET='YlOcdb6zBGXi8kCkh8CxDQaex'
export ACCESS_TOKEN='16826115-BdcTs6p81ZbvI0x2loCqN8ItF4abnwSBtIGvDDtJT'
export ACCESS_TOKEN_SECRET='tv4NHUSuhAdqZPS3QEwN6h4ITCOEsBlXST8oZ55t8t9yF'
#export CONSUMER_KEY='...'
#export CONSUMER_SECRET='...'
#export ACCESS_TOKEN='...'
#export ACCESS_TOKEN_SECRET='...'

# Default pomodoro is 20 minutes and default break is 5 minutes.
# You can change these defaults like this.
export TTC_POMODORO=25
export TTC_BREAK=10
