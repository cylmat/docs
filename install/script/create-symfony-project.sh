#!/usr/bin/env bash

# Use
# curl -sS https://raw.githubusercontent.com/cylmat/docs/refs/heads/main/install/script/create-symfony-project.sh | bash

# @todo change user root
# @todo add openssl

GITURL_CREATE=

##########
# Script #
##########

mkdir -p scripts 

curl https://raw.githubusercontent.com/cylmat/docs/refs/heads/main/install/script/create/scripts/create_prj.sh -o scripts/create_prj.sh 
curl https://raw.githubusercontent.com/cylmat/docs/refs/heads/main/install/script/create/scripts/db_install.sh -o scripts/db_install.sh
curl https://raw.githubusercontent.com/cylmat/docs/refs/heads/main/install/script/create/scripts/qa_install.sh -o scripts/qa_install.sh 

curl -O https://raw.githubusercontent.com/cylmat/docs/refs/heads/main/install/script/create/Dockerfile
curl -O https://raw.githubusercontent.com/cylmat/docs/refs/heads/main/install/script/create/Makefile
curl -O https://raw.githubusercontent.com/cylmat/docs/refs/heads/main/install/script/create/Readme.md

### Usage doc ###

chmod a+x -R ./scripts 
cat Readme.md

# npm if needed
