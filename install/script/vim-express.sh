#!/usr/bin/env bash

# usage:
#
# apt update && apt install -y curl git vim
# curl https://raw.githubusercontent.com/cylmat/docs/refs/heads/main/install/script/vim-express.sh | bash

export PLUGIN_DIR=~/.vim/pack/plugins/start

# create 
echo "Run"
echo "create ~/.vim/pack/plugins/start"
echo ""

# mkdir -p ~/.vim/pack/plugins/start
mkdir -p $PLUGIN_DIR

# plugins

echo "Installing..."

echo "nerdtree"
test -d $PLUGIN_DIR/nerdtree       || git clone https://github.com/scrooloose/nerdtree $PLUGIN_DIR/nerdtree
echo "vim-easymotion"
test -d $PLUGIN_DIR/vim-easymotion || git clone https://github.com/easymotion/vim-easymotion.git $PLUGIN_DIR/vim-easymotion
echo "vim-sneak"
test -d $PLUGIN_DIR/vim-sneak      || git clone https://github.com/justinmk/vim-sneak $PLUGIN_DIR/vim-sneak
echo "vim-surround"
test -d $PLUGIN_DIR/vim-surround   || git clone https://github.com/tpope/vim-surround $PLUGIN_DIR/vim-surround

# :helptags ~/.vim/pack/plugins/start/nerdtree

echo "Listing..."
ls -al $PLUGIN_DIR

echo 'vim -c "helptag ALL" -c q'
vim -c "helptag ALL" -c q
