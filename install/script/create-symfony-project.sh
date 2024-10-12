#!/usr/bin/env bash

# Use
# curl -sS https://raw.githubusercontent.com/cylmat/docs/refs/heads/main/install/script/create-symfony-project.sh | bash

# @todo change user root
# @todo add openssl

##########
# Script #
##########

mkdir -p scripts 

### CREATE ###

tee scripts/create_prj.sh <<EOF
#!/usr/bin/env bash

# create
symfony new symfony_project
mv symfony_project/* . && mv symfony_project/.* . && rm -r symfony_project
curl https://raw.githubusercontent.com/cylmat/symplay/refs/heads/main/public/.htaccess -o public/.htaccess

# make
cat composer.json | jq '.extra."public-dir"="public"' > /tmp/composer.json
rm composer.json && mv /tmp/composer.json .
composer req --dev maker
chmod a+w -R .
echo 'Test' | bin/console make:controller
echo 'Access test page on "http://localhost:8123/test"'
EOF

### DB & FORM ###

tee scripts/db_install.sh <<EOF
#!/usr/bin/env bash

# doctrine
composer req doctrine --no-interaction
sed -ie 's/DATABASE_URL="postgresql/# DATABASE_URL="postgresql/' .env
sed -ie 's/# DATABASE_URL="sqlite/DATABASE_URL="sqlite/' .env
# form
composer require form validator twig-bundle security-csrf
echo 'Use bin/console make:entity or bin/console make:crud'
EOF

### TESTS ###

tee scripts/qa_install.sh <<EOF
#!/usr/bin/env bash

mkdir -p tools
composer req --dev --working-dir=tools friendsofphp/php-cs-fixer phpmd/phpmd phpunit/phpunit phpstan/phpstan
EOF

### INSTALL ###

tee Dockerfile <<EOF
FROM php:apache
# app
RUN apt update && apt install -y git jq sqlite3 vim zip
RUN git config --global user.email 'you@example.com'
RUN git config --global user.name 'Your Name'
# composer
RUN curl -sS https://raw.githubusercontent.com/cylmat/docs/refs/heads/main/install/script/composer-install.sh | bash
RUN mv ./composer.phar /usr/local/bin/composer
RUN chmod a+x /usr/local/bin/composer
# symfony
RUN curl -sS https://get.symfony.com/cli/installer | bash
RUN mv /root/.symfony5/bin/symfony /usr/local/bin/symfony
RUN chmod a+x /usr/local/bin/symfony
# apache
RUN sed -ie 's#/var/www/html#/var/www/public#' /etc/apache2/sites-enabled/000-default.conf
RUN cp /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/
RUN . /etc/apache2/envvars
# dir
WORKDIR /var/www
EOF

### README ###

tee Makefile <<EOF
SHELL := /bin/bash
PHONY: build_container run_container connect_container stop_container remove_container create_project install_db install_qa see_doc

build_container:
  docker build -t php-apache-img .
run_container:
  docker run -it -d -v .:/var/www -p 8123:80 --name phpapache php-apache-img
connect_container:
  docker exec -it phpapache bash
stop_container:
  docker container stop phpapache  
remove_container:
  docker container remove phpapache

# Create a new Symfony project.
create_project:
  bash scripts/create_prj.sh
# Install Doctrine & forms.
install_db:
  bash scripts/db_install.sh
# Install Quality tests.
install_qa:
  bash scripts/qa_install.sh
see_doc:
  @cat Readme.md
EOF

### README ###

tee Readme.md <<EOF
# Usage
Usage: make <cmd>
build_container run_container connect_container stop_container remove_container
create_project install_db install_qa
EOF

### Usage doc ###

chmod a+x -R ./scripts 
echo "Usage: make <cmd>"
echo "build_container run_container connect_container stop_container remove_container"
echo "create_project install_db install_qa see_doc"

# npm if needed
