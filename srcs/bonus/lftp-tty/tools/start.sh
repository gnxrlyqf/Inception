#!/bin/sh

exec ttyd -W lftp -u "${FTP_USER},${FTP_PASSWORD}" "ftp://ftp"