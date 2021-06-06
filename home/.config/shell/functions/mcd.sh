#!/bin/bash

# Source: <github.com/thoughtbot/dotfiles/blob/master/zsh/functions/mcd>
# Make directory and change into it.

function mcd() {
  mkdir -p "$1" && cd "$1" || { echo "\u274c: Could not 'cd' into directory!"; exit 1; };
}
