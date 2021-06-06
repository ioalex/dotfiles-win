# shellcheck shell=bash

# Set environment variables

# Set language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Terminal
export TERM="xterm+256color"

# Set Editor Defaults
export VEDITOR="code"
export EDITOR="nvim"

# Use XDG Base Directory Specification
# http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR:="/private/var/tmp"}

# Shells
# ZSH
# Set ZSH_CACHE_DIR to the path where cache files should be created
# This is needed to ensure the zsh_reload plugin works properly <github.com/ohmyzsh/ohmyzsh/blob/master/plugins/zsh_reload/zsh_reload.plugin.zsh>
if [[ -z "$ZSH_CACHE_DIR" ]]; then
  ZSH_CACHE_DIR="${XDG_CACHE_HOME:="$HOME/.cache"}/zsh"
fi
mkdir -p "$ZSH_CACHE_DIR"

# Paths to zshrc configuration
export ZDOTDIR=${XDG_CONFIG_HOME:="$HOME/.config"}/zsh
mkdir -p "$ZDOTDIR"
export ZSH_ZSH=${ZDOTDIR:="$HOME/.config/zsh"}/zsh
export ZSH_CONFIG=${ZSH_ZSH:="$HOME/.config/zsh/zsh"}/config
export ZSH_MISC=${ZSH_CONFIG:="$HOME/.config/zsh/zsh/config"}/misc
export ZSH_COMPLETIONS=${ZSH_MISC:="$HOME/.config/zsh/zsh/config/misc"}/completions
export ZSH_FUNCTIONS=${ZSH_CONFIG:="$HOME/.config/zsh/zsh/config"}/functions

# Bash
export BASH_DIR=${XDG_CONFIG_HOME:="$HOME/.config"}/bash
mkdir -p "$BASH_DIR"
export BASH_BASH=${BASH_DIR:="$HOME/.config/bash"}/bash
export BASH_CONFIG=${BASH_BASH:="$HOME/.config/bash/bash"}/config
export BASH_MISC=${BASH_CONFIG:="$HOME/.config/bash/bash/config"}/misc

# Shell History Variables
export HISTORY_DIR="${XDG_CACHE_HOME:="$HOME/.cache"}/history"
mkdir -p "$HISTORY_DIR"
export ZSH_HISTORY="$HISTORY_DIR/.zsh_history"
export BASH_HISTORY="$HISTORY_DIR/.bash_history"

# Applications

# Rust
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup

# Cargo
export CARGO_HOME="${XDG_DATA_HOME:="$HOME/.local/share"}/cargo"
mkdir -p "$CARGO_HOME"

# Node Version Manager
export NVM_DIR="${XDG_DATA_HOME:="$HOME/.local/share"}/nvm"
mkdir -p "$NVM_DIR"

# Fast Node Manager
export FNM_DIR="${XDG_DATA_HOME:="$HOME/.local/share"}/fnm"
mkdir -p "$FNM_DIR"

# Node
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history

# NPM
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc

# Ruby Version Manager
export rvm_ignore_dotfiles=yes
export RVM_IGNORE_DOTFILES=YES

# Gems
export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem

# Hub
export HUB_CONFIG="${XDG_CONFIG_HOME:="$HOME/.config"}/hub"
export HUB_PROTOCOL="https"
export GITHUB_HOST="github.com"
export GITHUB_USER="ioalex"

# Tmux
export TMUXDIR=${XDG_CONFIG_HOME:="$HOME/.config"}/tmux
mkdir -p "$TMUXDIR"

# Antibody
export ANTIBODY_HOME=$XDG_CONFIG_HOME/antibody
export ANTIBODY_PLUGINS=$ZDOTDIR/.zsh_plugins.sh
export ANTIBODY_PLUGINS_TXT=$ZDOTDIR/.zsh_plugins.txt

# Ripgrep
export RIPGREP_DIR="$XDG_CONFIG_HOME/ripgrep"
mkdir -p "$RIPGREP_DIR"
export RIPGREP_CONFIG_PATH="$RIPGREP_DIR/ripgreprc"

# Starship Prompt
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# Zoxide
export _ZO_DATA_DIR=$XDG_DATA_HOME
export _ZO_ECHO=1

# Manpages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Misc.
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
mkdir -p "$GOPATH"
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
