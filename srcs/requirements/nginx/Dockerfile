FROM debian:12

# update apt
RUN apt update

# install nginx and openssl
RUN apt install nginx openssl -y

# create ssl directory
RUN mkdir -p /etc/nginx/ssl /var/run/nginx

# create sl certificate
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MA/ST=Casablanca-Settat/L=Casablanca/O=1337/OU=1337/CN=mchetoui.42.fr/UID=mchetoui"

COPY conf/nginx.conf /etc/nginx/

COPY conf/server.conf /etc/nginx/conf.d/

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
