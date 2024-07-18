#!/bin/sh


if [ ! -d "/var/lib/mysql/wordpress" ]; then

# create an init sql file for db database creation
cat << EOF > /tmp/create_db.sql
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('${DB_ROOT}');
CREATE DATABASE IF NOT EXISTS ${DB_NAME};
CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED by '${DB_PASS}';
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';
FLUSH PRIVILEGES;
EOF

# start mysql service
service mysql start

# init mysql database
mysql -D mysql < /tmp/create_db.sql | true

# stop mysql service
service mysql stop | echo -n ""

fi

exec mysqld_safe
