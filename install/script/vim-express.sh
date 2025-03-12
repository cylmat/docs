#!/usr/bin/env bash

# usage:
#
# apt install -y curl git
# curl https://raw.githubusercontent.com/cylmat/docs/refs/heads/main/install/script/vim-express.sh | bash

PLUGIN_DIR=~/.vim/pack/plugins/start

# create 
echo "Run"
echo "create ~/.vim/pack/plugins/start"
echo ""

# mkdir -p ~/.vim/pack/plugins/start
mkdir -p $PLUGIN_DIR

# plugins
git clone https://github.com/scrooloose/nerdtree $PLUGIN_DIR/nerdtree

echo ""
ls -al $PLUGIN_DIR
