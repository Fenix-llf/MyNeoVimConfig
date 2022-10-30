#!/bin/bash

set -e

NVIM_PATH=~/.config/nvim/

function exit_func {
	if [ $? -eq 0 ];then
		echo "===Install success!==="
	else
		echo "===Install Faile!==="
	fi
}


trap exit_func EXIT

if [ $(id -u) -eq 0 ];then
	echo "Dont run this script as root or using sudo !";
	exit 1
fi


# add neovim source
sudo apt-add-repository ppa:neovim-ppa/stable
sudo apt update

# required packages
sudo apt-get install neovim python3 python-pip3 curl git nodejs npm -y


# install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn

# clone MY neovim configuation
if [ ! -d ${NVIM_PATH} ];then
	mkdir -p ${NVIM_PATH}
fi
git clone git@github.com:Fenix-llf/MyNeoVimConfig.git ${NVIM_PATH}

# install packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

exit 0


