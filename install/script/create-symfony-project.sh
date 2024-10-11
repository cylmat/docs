#!/usr/bin/env bash

# docker container stop phpapache && docker container remove phpapache
docker run -it -d -v .:/var/www/html -p 8123:80 --name phpapache php:8.3-apache

# apt
docker exec sh -c "apt update && apt install -y git"
docker exec sh -c "git config --global user.email 'you@example.com'"
docker exec sh -c "git config --global user.name 'Your Name'"

# composer
docker exec sh -c "curl -sS https://raw.githubusercontent.com/cylmat/docs/refs/heads/main/install/script/composer-install.sh | bash"
docker exec sh -c "mv ./composer.phar /usr/local/bin/composer"
docker exec sh -c "rm composer-temp.phar && rm composer-setup.php"

# symfony
docker exec sh -c "curl -sS https://get.symfony.com/cli/installer | bash"
docker exec sh -c "mv /root/.symfony5/bin/symfony /usr/local/bin/symfony"
docker exec sh -c "symfony new project"
docker exec sh -c "mv project/* . && mv project/.* . && rm -r project"
docker exec sh -c "chmod a+w -R ."

# run
docker exec -it phpapache bash

return 0

# npm if needed
