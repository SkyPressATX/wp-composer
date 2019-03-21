FROM wpengine/php:7.2

RUN apt-get update
RUN apt-get install -y \
	zip \
	unzip \
	ssh \
  	git \
  && rm -rf /var/lib/apt/lists/*

COPY ./setup.sh /tmp

RUN chmod +x /tmp/setup.sh \
 && /bin/sh /tmp/setup.sh

USER www-data
WORKDIR /app
