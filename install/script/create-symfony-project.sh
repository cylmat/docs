#!/usr/bin/env bash

# docker container stop phpapache && docker container remove phpapache

##########
# Script #
##########
mkdir -p scripts

tee scripts/install.sh <<EOF
#!/usr/bin/env bash

# apt
apt update && apt install -y git jq vim zip
git config --global user.email 'you@example.com'
git config --global user.name 'Your Name'

# composer
curl -sS https://raw.githubusercontent.com/cylmat/docs/refs/heads/main/install/script/composer-install.sh | bash
mv ./composer.phar /usr/local/bin/composer

# symfony
curl -sS https://get.symfony.com/cli/installer | bash
mv /root/.symfony5/bin/symfony /usr/local/bin/symfony

# create
symfony new project
mv project/* . && mv project/.* . && rm -r project
mv project html
chmod a+w -R .
curl https://raw.githubusercontent.com/cylmat/symplay/refs/heads/main/public/.htaccess -o html/.htaccess

# make
cat composer.json | jq '.extra."public-dir"="html"' > /tmp/composer.json
rm composer.json && mv /tmp/composer.json .
composer req --dev maker
EOF

#######
# Run #
#######
tee Dockerfile <<EOF
FROM php:8.3-apache
RUN cp /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/
COPY ./scripts/install.sh /usr/local/bin/
RUN . /etc/apache2/envvars
EOF

docker build -t php-8.3-apache-img  .
docker run -it -d -v .:/var/www/html -p 8123:80 --name phpapache php-8.3-apache-img

# run
docker exec -it phpapache bash

return 0

# npm if needed
