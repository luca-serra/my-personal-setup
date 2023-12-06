#!/bin/bash
wget -O custom-dev-setup.zip https://github.com/luca-serra/my-personal-setup/archive/master.zip
unzip custom-dev-setup.zip \
&& rm custom-dev-setup.zip \
&& mv my-personal-setup-master custom-dev-setup

mkdir ~/.additional_custom_script
cp custom-dev-setup/terminal/additional_custom_script/* ~/.additional_custom_script/

rm -r custom-dev-setup
