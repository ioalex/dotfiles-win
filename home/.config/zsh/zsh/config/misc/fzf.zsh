# FZF Configuration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND

if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files --hidden'
fi

# Use FZF in Todoist CLI <github.com/sachaos/todoist>
source $(brew --prefix)/share/zsh/site-functions/_todoist_fzf
