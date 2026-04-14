FROM alpine:3.22.3

RUN apk update

RUN apk add ttyd lftp

ARG SQL_USER SQL_PASSWORD

ENV FTP_USER=$SQL_USER FTP_PASSWORD=$SQL_PASSWORD

EXPOSE 7681

COPY tools/start.sh .

RUN chmod +x start.sh

ENTRYPOINT ["./start.sh"]