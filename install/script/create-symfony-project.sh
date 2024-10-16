#!/usr/bin/env bash

# Install scripts and clean project
# curl -sS https://raw.githubusercontent.com/cylmat/docs/refs/heads/main/install/script/create-symfony-project.sh | bash

# @todo change user root
# @todo add openssl

git clone https://github.com/cylmat/clean-symfony .
rm -r .git
chmod 0755 ./*

### Usage doc ###

cat Readme.md

# npm if needed
