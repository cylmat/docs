#!/usr/bin/env bash

# docker container stop phpapache && docker container remove phpapache
docker run -it -d -v .:/var/www/html -p 8123:80 --name phpapache php:8.3-apache

# apt
docker exec sh -c "
  apt update && apt install -y git vim zip &&
  git config --global user.email 'you@example.com' && \
  git config --global user.name 'Your Name'
"

# composer
docker exec sh -c "
  curl -sS https://raw.githubusercontent.com/cylmat/docs/refs/heads/main/install/script/composer-install.sh | bash && \
  mv ./composer.phar /usr/local/bin/composer
"

# symfony
docker exec sh -c "
  curl -sS https://get.symfony.com/cli/installer | bash && \
  mv /root/.symfony5/bin/symfony /usr/local/bin/symfony
"

# create
docker exec sh -c "
  symfony new project && \
  mv project/* . && mv project/.* . && rm -r project && \
  chmod a+w -R . && \
  curl -O https://github.com/cylmat/symplay/blob/main/.htaccess && \
  curl https://github.com/symfony/recipes-contrib/blob/main/symfony/apache-pack/1.0/public/.htaccess -o public/.htaccess
"

# run
docker exec -it phpapache bash

return 0

# npm if needed
