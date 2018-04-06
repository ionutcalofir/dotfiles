# Path to your oh-my-zsh installation.
export ZSH=/home/calo/.oh-my-zsh

source $ZSH/oh-my-zsh.sh
DEFAULT_USER="calo"

source "$HOME/zshrc/configs.zsh"
source "$HOME/zshrc/key-bindings.zsh"
source "$HOME/zshrc/aliases.zsh"
source "$HOME/zshrc/prompt.zsh"
source "$HOME/zshrc/python.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
