FROM debian:buster

RUN apt update

RUN apt install git make build-essential nodejs python3 -y

RUN git clone https://github.com/elsayedamine/WEBSERV

COPY conf/webserv.conf WEBSERV/sandbox/webserv.conf

COPY tools/start.sh start.sh

RUN chmod +x start.sh

WORKDIR /WEBSERV

RUN make re

EXPOSE 8080

ENTRYPOINT ["/start.sh"]
