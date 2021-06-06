# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set PATH to include linuxbrew
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# Generic configuration that applies to all shells

typeset -a shell

shell+=("$HOME/.config/shell/paths.sh")
# shell+=("$HOME/.config/shell/variables.sh")
shell+=("$HOME/.config/shell/common.sh")
shell+=("$HOME/.config/shell/aliases.sh")

for file in "${shell[@]}"; do
    if [[ -a "$file" ]]; then
      # shellcheck source=/dev/null
      source "$file"
    fi
done

# Global functions
for f in "$HOME/.config/shell/functions"/*; do
  source $f
done

# Source Cargo
# . "$HOME/.cargo/env"
. "$CARGO_HOME/env"

