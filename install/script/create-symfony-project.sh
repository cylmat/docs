#!/usr/bin/env bash

echo "
FROM php:8.3-apache

RUN cp /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/
" > Dockerfile
# docker build -t php-8.3-apache-img  .
# docker exec source /etc/apache2/envvars
# docker container stop phpapache && docker container remove phpapache

docker run -dit -v .:/var/www/html -p 8123:80 --name phpapache php-8.3-apache-img

# apt
docker exec sh -c "
  apt update && apt install -y git jq vim zip && \
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
  mv project html
  chmod a+w -R . && \
  curl https://raw.githubusercontent.com/cylmat/symplay/refs/heads/main/public/.htaccess -o html/.htaccess
"

docker exec sh -c "
  cat composer.json | jq '.extra."public-dir"="html"' > /tmp/composer.json && \
  rm composer.json && mv /tmp/composer.json . && \
  composer req --dev maker
"

# run
docker exec -it phpapache bash

return 0

# npm if needed
