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

# added by Anaconda3 installer
export PATH="/home/calo/anaconda3/bin:$PATH"

## CUDA
export CUDA_HOME=/usr/local/cuda-9.0
export PATH=/usr/local/cuda-9.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64\
                       ${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/extras/CUPTI/lib64
