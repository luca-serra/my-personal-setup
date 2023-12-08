#!/bin/bash

# 1. Add custom aliases
wget -O custom-dev-setup.zip https://github.com/luca-serra/my-personal-setup/archive/master.zip
unzip custom-dev-setup.zip \
&& rm custom-dev-setup.zip \
&& mv my-personal-setup-master custom-dev-setup

mkdir ~/.additional_custom_script
cp -r custom-dev-setup/terminal/additional_custom_script/* ~/.additional_custom_script/

# 2. Install Oh my zsh with powerlevel10k

sudo apt -y install zsh
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
desired_theme="powerlevel10k/powerlevel10k"
# Check if ZSH_THEME is already set to the desired theme
if grep -q "ZSH_THEME=\"$desired_theme\"" ~/.zshrc; then
    echo "ZSH_THEME is already set to $desired_theme"
else
    # Replace any existing ZSH_THEME setting with the desired theme, or add it if it doesn't exist
    if grep -q "ZSH_THEME=" ~/.zshrc; then
        # Use a delimiter that is not expected to be in the theme or the path
        sed -i.bak "s#^ZSH_THEME=.*#ZSH_THEME=\"$desired_theme\"#" ~/.zshrc
    else
        echo "ZSH_THEME=\"$desired_theme\"" >> ~/.zshrc
    fi
    echo "ZSH_THEME has been set to $desired_theme"
fi

cat custom-dev-setup/terminal/.bashrc_suffix.sh >> ~/.zshrc
rm -r custom-dev-setup
