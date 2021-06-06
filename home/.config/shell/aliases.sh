# shellcheck shell=bash
# shellcheck disable=SC2139

# Global Aliases

alias sc="$HOME/Projects/Web-Development/Science-Fiction/science-fiction-shop"
alias update="sudo apt-get update && sudo apt-get upgrade"

alias svn="svn --config-dir ${XDG_CONFIG_HOME:="$HOME/.config"}/subversion"

# Commonly Used
alias c=clear
alias please=sudo
alias pls=sudo
alias o="explorer.exe ."
alias cat=bat
alias cp="cp -i"
alias mv="mv -i"
alias rm=trash
alias rmf='\rm -rf'
alias mkdir="mkdir -pv"
alias ls="colorls --color=auto"
alias la="colorls -a --gs --sd --color=auto"
alias lc="colorls -lA --sd --color=auto"
alias ld="colorls -lda --sd --color=auto"
alias ll="colorls -lha --sd --color=auto"
alias le="exa -Fa --icons --color=auto --group-directories-first --git"
alias l.='exa -a | egrep "^\."'
alias grep="rg --color=auto"
alias egrep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias hs="history | rg"
alias r=ranger
alias rn=rename
alias find=fd
alias sed=sd

alias ...="cd ../.."
alias ....="cd ../../.."

alias b=brew
alias chrome=chrome-cli
alias wifi=wifi-password
alias dbx=dbxcli
alias wget="wget -c"
alias top="htop"
# alias pip=pip3
# alias python=python3
alias wtf=apropos # list of commands apropos to the term you give it
eval "$(thefuck --alias fuck)"
eval "$(thefuck --alias FUCK)" # For Mondays!
alias lastlogin='last -1 $(whoami)'    # Prints the last login information - useful as .hushlogin completely suppresses the last login messages
alias gpg="gpg --homedir ${XDG_DATA_HOME:="$HOME/.local/share"}/gnupg"
alias st=speedtest

# Editors
alias vim=nvim
alias vi=nvim
alias v=nvim
alias m=micro
alias nano=micro # Use Micro in place of Nano

# Tmux
alias tmux="tmux -f $TMUX_CONFIG"
alias q=exit
alias tr='tmux source $TMUX_CONFIG'
alias t="tmux attach || tmux new-session\; split-window -h" # Attaches tmux to the last session; creates a new session (with a panel split into left and right) if none exists.
alias tl="tmux list-sessions" # Lists all ongoing sessions
alias tn="tmux new -s"
alias ta="tmux attach -t"
alias tk="tmux kill-session -t"

# Git
# Hub can be safely aliased as git
alias git="hub"

# NPM
alias n=npm
alias npmg="npm list -g --depth=0"
alias npml="npm list --depth=0"

# Commands
# alias help='source $HOME/.config/help/help.sh'
# alias keys='source $HOME/.config/rebindkeys/rebindkey.sh'
alias todo="todoist list --filter 'today'"

# Maintenance
# alias doctor="cleanmymac update && cleanmymac"
alias shells="cat /etc/shells"

# Configuration
alias nvimconfig='nvim $HOME/.config/nvim'
alias tmuxconf='nvim $TMUX_CONFIG'

# Directory Shortcuts
alias dotfiles='cd $DOTFILES'
alias projects='cd $PROJECTS'
alias webdev='cd $WEBDEV'
