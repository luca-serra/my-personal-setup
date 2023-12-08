# Keeping only the interesting part of the file

export ZSH="$HOME/.oh-my-zsh"

source $ZSH/themes/powerlevel10k/powerlevel10k.zsh-theme
ZSH_THEME="powerlevel10k"

plugins=(git
zsh-autosuggestions
wd
)

source $ZSH/oh-my-zsh.sh

# Sourcing additional scripts, user defined
for file in $HOME/.additional_custom_script/* 
do
   source $file
done
