FROM debian:buster

RUN apt update

RUN apt install redis-server -y

RUN printf "%s\n" \
	"maxmemory 256mb" \
	"maxmemory-policy allkeys-lru" >> /etc/redis/redis.conf

RUN sed -i -r "s/bind 127.0.0.1/#bind 127.0.0.1/" /etc/redis/redis.conf

ENTRYPOINT [ "redis-server", "--protected-mode", "no" ]
