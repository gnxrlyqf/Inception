FROM debian:12

RUN apt update

RUN apt install vsftpd -y

RUN mkdir -p /srv/files/ftp

RUN usermod -d /srv/files/ftp ftp

RUN sed -i "s/anonymous_enable=NO/anonymous_enable=YES/" /etc/vsftpd.conf

RUN mkdir /var/run/vsftpd/empty -p

RUN printf "%s\n" \
	"pasv_enable=YES" \
	"pasv_min_port=30000" \
	"pasv_max_port=30009" \
	"pasv_address=ftp" \
	"pasv_addr_resolve=YES" \
	>> /etc/vsftpd.conf

ENTRYPOINT [ "vsftpd" ]