FROM debian:buster


RUN apt update -y && apt install \
    mariadb-server \
    mariadb-client -y

RUN chown -R mysql:mysql /var/lib/mysql
RUN chmod -R go-rx /var/lib/mysql

COPY ./conf/server.cnf /etc/mysql/mariadb.conf.d/server.cnf
COPY ./tools/create_db.sh /tmp/

CMD ["sh", "/tmp/create_db.sh"]