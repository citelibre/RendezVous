FROM mysql

ENV MYSQL_ROOT_PASSWORD=root

COPY dump.sql /docker-entrypoint-initdb.d/
COPY dump-matomo.sql /docker-entrypoint-initdb.d/
