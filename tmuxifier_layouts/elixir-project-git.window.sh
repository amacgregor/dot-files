# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
#window_root "~/Projects/elixir-project-git"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "Git"

# Split window into panes.
split_h 40

#Run watch git status
run_cmd "osx_watch 'git status' 2"

split_v 50
run_cmd "osx_watch 'git --no-pager log --graph --oneline --decorate --all' 2"


# Run commands.
#run_cmd "top"     # runs in active pane
#run_cmd "date" 1  # runs in pane 1

# Paste text
#send_keys "top"    # paste into active pane
#send_keys "date" 1 # paste into pane 1

# Set active pane.
#select_pane 0
