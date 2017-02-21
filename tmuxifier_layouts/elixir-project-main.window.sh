# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
#window_root "~/Projects/elixr-project-window"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "Elixir IDE"

# Split window into panes.
split_h 40
run_cmd "iex -S mix"
split_v 50
run_cmd "mix test.watch"

# Set active pane.
select_pane 1
run_cmd "vim"
