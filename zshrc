export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="clean"
source $ZSH/oh-my-zsh.sh
export DEFAULT_USER=$USER
export PATH="${PATH}:${HOME}/.local/bin"

alias p=python3
alias i=ipython
alias c=clear
alias vi=nvim
alias x=exit
alias h="cd ~/; ls"

function peco-hist(){
local tac
if which tac > /dev/null; then
	tac="tac"
else
	tac="tail -r"
fi
BUFFER=$(history -1000 | eval $tac | cut -c 8- | peco --query "$LBUFFER")
CURSOR=$#BUFFER
}
zle -N peco-hist
bindkey '^R' peco-hist

function coa(){
conda activate $(conda env list | tail -n +3 | awk '{print $1;}' | peco --prompt 'Conda Activate:')
}
alias cod="conda deactivate"
alias cos="conda deavtivate; coa
