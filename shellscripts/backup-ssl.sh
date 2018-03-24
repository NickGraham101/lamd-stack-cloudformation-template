#!/bin/bash
PATH=/sbin:/bin:/usr/sbin:/usr/bin:/home/centos/.local/bin
cp -Lr /etc/letsencrypt /home/centos/backup-ssl
chown -R centos /home/centos/backup-ssl
