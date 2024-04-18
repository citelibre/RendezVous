FROM mariadb:10.6.17-focal

ENV MYSQL_ROOT_PASSWORD=root

COPY 1-dump.sql /docker-entrypoint-initdb.d/
COPY 2-dump-matomo.sql /docker-entrypoint-initdb.d/
COPY 3-dump-keycloak.sql /docker-entrypoint-initdb.d/
COPY 4-dump-businessdata.sql /docker-entrypoint-initdb.d/