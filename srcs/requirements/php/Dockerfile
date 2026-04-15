FROM debian:buster

RUN apt update -y

RUN apt install curl php8.2 php-fpm php-mysql mariadb-client -y

COPY tools/setup.sh .

ARG SQL_USER SQL_DATABASE SQL_PASSWORD

ENV SQL_USER=$SQL_USER SQL_DATABASE=$SQL_DATABASE SQL_PASSWORD=$SQL_PASSWORD

RUN sh setup.sh

COPY conf/www.conf /etc/php/8.2/fpm/pool.d/

EXPOSE 9000

ENTRYPOINT ["/usr/sbin/php-fpm8.2", "-F"]
