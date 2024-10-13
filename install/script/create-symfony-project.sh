#!/usr/bin/env bash

# Use
# curl -sS https://raw.githubusercontent.com/cylmat/docs/refs/heads/main/install/script/create-symfony-project.sh | bash

# @todo change user root
# @todo add openssl

GITURL_CREATE=https://raw.githubusercontent.com/cylmat/docs/refs/heads/main/install/script/create

##########
# Script #
##########

mkdir -p scripts 

curl ${GITURL_CREATE}/scripts/create_prj.sh -o scripts/create_prj.sh 
curl ${GITURL_CREATE}/scripts/db_install.sh -o scripts/db_install.sh
curl ${GITURL_CREATE}/scripts/qa_install.sh -o scripts/qa_install.sh 

curl -O ${GITURL_CREATE}/Dockerfile
curl -O ${GITURL_CREATE}/Makefile
curl -O ${GITURL_CREATE}/Readme.md

### Usage doc ###

chmod a+x -R ./scripts 
cat Readme.md

# npm if needed
