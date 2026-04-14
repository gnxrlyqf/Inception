FROM alpine:3.22.3

RUN apk update

RUN apk add ttyd lftp

EXPOSE 7681

ENTRYPOINT [ "ttyd", "-W", "lftp", "-u", "anonymous,",  "ftp://ftp"]