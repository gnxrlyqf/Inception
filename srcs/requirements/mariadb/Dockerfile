FROM debian:buster

RUN apt update -y

RUN apt install mariadb-server -y

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/setup.sh .

ARG SQL_USER SQL_DATABASE SQL_PASSWORD SQL_ROOT_PASSWORD

ENV SQL_USER=$SQL_USER SQL_DATABASE=$SQL_DATABASE SQL_PASSWORD=$SQL_PASSWORD SQL_ROOT_PASSWORD=$SQL_ROOT_PASSWORD

RUN chmod +x setup.sh

RUN sh setup.sh

EXPOSE 3306

ENTRYPOINT ["mysqld"]
