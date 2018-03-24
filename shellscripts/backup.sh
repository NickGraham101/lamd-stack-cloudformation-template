#! /bin/bash
PATH=/usrlocal.sbin:/usr/local/bin:/usr/sbin:usr/bin:/sbin:/bin:/root/bin/
mysqldump -u bkup -p'{{DBBackupUserPassword}}' --routines grahamandtonic_ | gzip > /home/centos/bkup/grahamandtonic_$(date +%F_%H%M).sql.gz
mysqldump -u bkup -p'{{DBBackupUserPassword}}' --skip-lock-tables --routines --databases information_schema mysql performance_schema | gzip > /home/centos/bkup/sys_dbs_$(date +%F_%H%M).sql.gz
