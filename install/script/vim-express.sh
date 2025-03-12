#!/usr/bin/env bash

# usage curl 

PLUGIN_DIR=~/.vim/pack/plugins/start

# create 
echo "create ~/.vim/pack/plugins/start"
mkdir -p $PLUGIN_DIR

# plugins
git clone https://github.com/scrooloose/nerdtree $PLUGIN_DIR
