#!/bin/bash

#############
# Languages #
#############

# Php-env : @https://github.com/phpenv/phpenv
git clone git@github.com:phpenv/phpenv.git ~/.phpenv
echo 'export PATH="$HOME/.phpenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(phpenv init -)"' >> ~/.bash_profile
exec $SHELL -l

# Node
Node : https://docs.volta.sh

# Ruby version manager : @https://rvm.io
gpg2 --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable --rails

# Python : @https://github.com/pyenv/pyenv
curl https://pyenv.run | bash
