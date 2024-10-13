#!/usr/bin/env bash

mkdir -p tools
composer req --dev --working-dir=tools friendsofphp/php-cs-fixer phpmd/phpmd phpunit/phpunit phpstan/phpstan
