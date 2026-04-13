#!/bin/sh
set -e

if [ ! -f /webserv/webserv ]; then
    mkdir -p /webserv
    cp -a /WEBSERV/. /webserv/
	rm -rf WEBSERV
fi

exec /webserv/webserv /webserv/sandbox/webserv.conf