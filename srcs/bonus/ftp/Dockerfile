FROM debian:12

RUN apt update

RUN apt install vsftpd -y

ARG SQL_USER SQL_PASSWORD

ENV FTP_USER=$SQL_USER FTP_PASSWORD=$SQL_PASSWORD

COPY tools/setup.sh .

RUN chmod +x setup.sh

RUN ./setup.sh

ENTRYPOINT [ "vsftpd" ]
