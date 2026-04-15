#!/bin/bash

service vsftpd start

# Add the USER, change his password and declare him as the owner of wordpress folder and all subfolders

adduser $FTP_USER --disabled-password

echo "$FTP_USER:$FTP_PASSWORD" | /usr/sbin/chpasswd &> /dev/null

echo "$FTP_USER" | tee -a /etc/vsftpd.userlist &> /dev/null

mkdir /home/$FTP_USER/ftp

chown nobody:nogroup /home/$FTP_USER/ftp
chmod a-w /home/$FTP_USER/ftp

sed -i -r "s/#write_enable=YES/write_enable=YES/1"   /etc/vsftpd.conf
sed -i -r "s/#chroot_local_user=YES/chroot_local_user=YES/1"   /etc/vsftpd.conf

echo "
local_enable=YES
allow_writeable_chroot=YES
pasv_enable=YES
local_root=/home/$FTP_USER/ftp
pasv_min_port=30000
pasv_max_port=30009
userlist_file=/etc/vsftpd.userlist" >> /etc/vsftpd.conf

service vsftpd stop
