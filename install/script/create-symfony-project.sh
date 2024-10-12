#!/usr/bin/env bash

# docker container stop phpapache && docker container remove phpapache
# TODO change user root

##########
# Script #
##########

mkdir -p scripts

### INSTALL ###

tee scripts/install.sh <<EOF
#!/usr/bin/env bash

# apt
git config --global user.email 'you@example.com'
git config --global user.name 'Your Name'

# composer
curl -sS https://raw.githubusercontent.com/cylmat/docs/refs/heads/main/install/script/composer-install.sh | bash
mv ./composer.phar /usr/local/bin/composer
chmod a+x /usr/local/bin/composer

# symfony
curl -sS https://get.symfony.com/cli/installer | bash
mv /root/.symfony5/bin/symfony /usr/local/bin/symfony
chmod a+x /usr/local/bin/symfony
EOF

### CREATE ###

tee scripts/create.sh <<EOF
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

### TESTS ###

tee scripts/install_tests.sh <<EOF
#!/usr/bin/env bash

mkdir -p tools
composer req --dev --working-dir=tools friendsofphp/php-cs-fixer phpmd/phpmd phpunit/phpunit phpstan/phpstan
EOF

tee Dockerfile <<EOF
FROM php:apache
# apache
RUN sed -ie 's#/var/www/html#/var/www/public#' /etc/apache2/sites-enabled/000-default.conf
RUN cp /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/
RUN . /etc/apache2/envvars
# app
RUN apt update && apt install -y git jq sqlite3 vim zip
COPY ./scripts/install.sh /usr/local/bin/
RUN chmod a+x /usr/local/bin/install.sh
RUN /usr/local/bin/install.sh
WORKDIR /var/www
EOF

#######
# Run #
#######

docker build -t php-apache-img  .
docker run -it -d -v .:/var/www -p 8123:80 --name phpapache php-apache-img
echo "Run scripts/create.sh to create a new Symfony project."
echo "Run scripts/install_tests.sh to install Quality tests."

# run
docker exec -it phpapache bash

return 0

# npm if needed
