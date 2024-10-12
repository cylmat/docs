#!/usr/bin/env bash

# docker container stop phpapache && docker container remove phpapache
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

### DB ###

tee scripts/db_install.sh <<EOF
#!/usr/bin/env bash

composer req doctrine --no-interaction
sed -ie 's/DATABASE_URL="postgresql/# DATABASE_URL="postgresql/'
sed -ie 's/# DATABASE_URL="sqlite/DATABASE_URL="sqlite/'
EOF

### TESTS ###

tee scripts/test_install.sh <<EOF
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

#######
# Run #
#######

chmod a+x -R ./scripts 
docker build -t php-apache-img  .
docker run -it -d -v .:/var/www -p 8123:80 --name phpapache php-apache-img

echo 'Usage:'
echo 'docker exec -it phpapache bash  to get into container.'
echo 'scripts/create_prj.sh           to create a new Symfony project.'
echo 'scripts/db_install.sh           to install Doctrine.'
echo 'scripts/test_install.sh         to install Quality tests.'

return 0

# npm if needed
