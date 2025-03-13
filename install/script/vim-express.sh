#!/usr/bin/env bash

# ###
# samples
# https://github.com/javiersalcedopuyo/DOT-Files/blob/master/init.vim
# https://dev.to/javiersalcedopuyo/turn-vim-into-a-comfy-and-modern-editor-with-these-plugins-53k3

# ###
# usage:
# apt update && DEBIAN_FRONTEND=noninteractive TZ=Europe/Paris apt-get -y install tzdata curl git vim
# curl https://raw.githubusercontent.com/cylmat/docs/refs/heads/main/install/script/vim-express.sh | bash

apt update && apt install curl

DEBIAN_FRONTEND=noninteractive TZ=Europe/Paris apt-get -y install tzdata
apt install -y git vim

export PLUGIN_DIR=~/.vim/pack/plugins/start

# create 
echo "Run"
echo "create ~/.vim/pack/plugins/start"
echo ""

# mkdir -p ~/.vim/pack/plugins/start
mkdir -p $PLUGIN_DIR

# plugins

echo "Installing..."

echo ":h NERDTree"
test -d $PLUGIN_DIR/nerdtree       || git clone https://github.com/scrooloose/nerdtree $PLUGIN_DIR/nerdtree
echo ":h easymotion (default '\')"
test -d $PLUGIN_DIR/vim-easymotion || git clone https://github.com/easymotion/vim-easymotion.git $PLUGIN_DIR/vim-easymotion
echo ":h sneak"
test -d $PLUGIN_DIR/vim-sneak      || git clone https://github.com/justinmk/vim-sneak $PLUGIN_DIR/vim-sneak
echo ":h surround"
test -d $PLUGIN_DIR/vim-surround   || git clone https://github.com/tpope/vim-surround $PLUGIN_DIR/vim-surround

# :helptags ~/.vim/pack/plugins/start/nerdtree

echo "Listing..."
ls -al $PLUGIN_DIR

echo "Use in Vim:"
echo ':set runtimepath?'
echo ''
echo 'Should run:'
echo 'vim -c "helptag ALL" -c q'
