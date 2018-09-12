#!/bin/bash

pswd=$1

unset temppass;
temppass=$(grep 'temporary password' /var/log/mysqld.log | sed 's/.*root@localhost: //')

mysql -u root -p$temppass --connect-expired-password -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$pswd';"
