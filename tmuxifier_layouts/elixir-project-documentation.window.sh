# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
#window_root "~/Projects/elixir-project-documentation"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "Project Docs"
sleep 0.7
#Open the Changelog
run_cmd "vim CHANGELOG.md"

#Split the Window in half
split_h 50

#Open the README
run_cmd "vim README.md"

# Set active pane.
select_pane 1
