# Path to your oh-my-zsh installation.
export ZSH=/home/ionutc/.oh-my-zsh

source $ZSH/oh-my-zsh.sh
DEFAULT_USER="ionutc"

source "$HOME/zshrc/configs.zsh"
source "$HOME/zshrc/key-bindings.zsh"
source "$HOME/zshrc/aliases.zsh"
source "$HOME/zshrc/prompt.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## CUDA
export CUDA_HOME=/usr/local/cuda-10.0
export PATH=/usr/local/cuda-10.0/bin:/usr/local/cuda-10.0/NsightCompute-1.0${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

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

# Bazel
export PATH="$PATH:$HOME/bin"
