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


#############
# Databases #
#############

# MongoDb
curl -fsSL https://pgp.mongodb.com/server-4.4.asc | gpg -o /usr/share/keyrings/mongodb-server-4.4.gpg --dearmor
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-4.4.gpg ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.4.list
# -> select the Geographic area 8 "Europe", 37 "Paris"
apt update && apt install -y mongodb-org
#export MONGO_URI=mongodb://root:root@localhost:27017
mongod --dbpath /data/db --port 27017 --fork --logpath /var/log/mongodb/mongod.log
mongo admin --eval 'db.createUser({user:"root",pwd:"root",roles:[{role:"userAdminAnyDatabase",db:"admin"}]})'

# Redis
curl -fsSL https://packages.redis.io/gpg | sudo gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/redis.list
apt-get update && apt-get install redis
redis-server &

# Sqlite
apt install -y sqlite3
sqlite3 test.db

# Memcached
# @use : sudo systemctl start memcached
apt install -y memcached libmemcached-tools