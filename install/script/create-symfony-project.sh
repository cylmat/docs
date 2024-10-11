#!/usr/bin/env bash

docker run -it -d -v .:/usr/src/myapp -w /usr/src/myapp --name phpapache --rm php:8.3-apache
# apt
docker exec sh -c "apt update && apt install -y git"
# composer
docker exec sh -c "curl -sS https://raw.githubusercontent.com/cylmat/docs/refs/heads/main/install/script/composer-install.sh | bash"
docker exec sh -c "mv ./composer.phar /usr/local/bin/composer"
docker exec sh -c "rm composer-temp.phar && rm composer-setup.php"
# symfony
curl -sS https://get.symfony.com/cli/installer | bash
mv /root/.symfony5/bin/symfony /usr/local/bin/symfony
#
docker exec -it phpapache bash
