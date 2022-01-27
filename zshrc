export ZSH="/home/deker/.oh-my-zsh"
ZSH_THEME="agnoster"

# if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi

plugins=(git)

source $ZSH/oh-my-zsh.sh

# pyenv initialize
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init --path)"
# 
# eval "$(pyenv init -)"

source ~/.alias.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/deker/.local/conda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/deker/.local/conda/etc/profile.d/conda.sh" ]; then
        . "/home/deker/.local/conda/etc/profile.d/conda.sh"
    else
        export PATH="/home/deker/.local/conda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
