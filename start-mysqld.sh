#!/bin/bash
exec mysqld_safe
mysql -uadmin -p$PASS -e "set GLOBAL general_log = 'ON'"
mysql -uadmin -p$PASS -e "set GLOBAL general_log_file = '/var/log/mysql/general.log'"
