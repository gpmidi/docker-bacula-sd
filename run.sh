#!/bin/bash
set -e
set -x

chown -R root:root /etc/bacula
chmod -R 644 /etc/bacula
chmod 755 /etc/bacula

cd /etc/bacula/ && bacula-sd -f -u ${BACULA_USER:-bacula} -g ${BACULA_GROUP:-bacula} -c /etc/bacula/bacula-sd.conf
