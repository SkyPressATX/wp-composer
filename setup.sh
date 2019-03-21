#!/bin/sh
## Download composer
curl -Lso /usr/local/bin/composer https://getcomposer.org/download/1.8.4/composer.phar
## Download PHPUnit
curl -Lso /usr/local/bin/phpunit https://phar.phpunit.de/phpunit-7.phar
## Set executables
chmod +x /usr/local/bin/composer
chmod +x /usr/local/bin/phpunit
## Create directories
mkdir /var/www/.composer
mkdir /app
## Set ownership for www-data user
chown -R www-data:www-data /var/www
chown -R www-data:www-data /app
