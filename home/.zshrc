# Path to your oh-my-zsh installation.
export ZSH=/home/ionutc/.oh-my-zsh
DEFAULT_USER="ionutc"

ZSH_THEME="agnoster"

source $ZSH/oh-my-zsh.sh

source "$HOME/zshrc/configs.zsh"
source "$HOME/zshrc/key-bindings.zsh"
source "$HOME/zshrc/aliases.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## CUDA
export CUDA_HOME=/usr/local/cuda-10.1
export PATH=/usr/local/cuda-10.1/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ionutc/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ionutc/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ionutc/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ionutc/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
