FROM wpengine/php:7.2
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN apt-get update
RUN apt-get install -y \
	zip \
	unzip \
	ssh
RUN curl -Lso /usr/local/bin/phpunit https://phar.phpunit.de/phpunit-7.phar
RUN chmod +x /usr/local/bin/phpunit

CMD ["/bin/bash"]
