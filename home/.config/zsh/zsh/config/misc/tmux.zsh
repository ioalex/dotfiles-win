# Automatically start tmux if:
# (1) tmux exists on the system,
# (2) we're in an interactive shell, and
# (3) we are not already in tux
# Source: <https://cutt.ly/EfWTG2b>
# if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#   exec tmux
# fi

# # Source: https://unix.stackexchange.com/questions/41274/having-tmux-load-by-default-when-a-zsh-terminal-is-launched
# if [[ ! $(tmux list-sessions) ]]; then
#   tmux
# fi

# tmux attach || tmux new-session\; split-window -h
