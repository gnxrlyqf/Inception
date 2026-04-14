FROM debian:12

RUN apt update

RUN apt install php8.2 php-mysql curl -y

WORKDIR /var/www

RUN curl -L https://github.com/vrana/adminer/releases/download/v5.4.2/adminer-5.4.2.php -o index.php

RUN chown -R root:root /var/www/

EXPOSE 8081

ENTRYPOINT [ "/usr/bin/php8.2", "-S", "[::]:8081", "-t", "/var/www" ]