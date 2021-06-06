if [ -s "$HOME/.rvmrc" ]; then
    source "$HOME/.rvmrc"
fi # to have $rvm_path defined if set
if [ -s "${rvm_path-$HOME/.rvm}/scripts/rvm" ]; then
    source "${rvm_path-$HOME/.rvm}/scripts/rvm"
fi
