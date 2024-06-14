FROM mariadb:10.6.17-focal

ENV MYSQL_ROOT_PASSWORD=root

COPY --chmod=0755 1-dump.sql /docker-entrypoint-initdb.d/
COPY --chmod=0755 2-dump-matomo.sql /docker-entrypoint-initdb.d/
COPY --chmod=0755 3-dump-keycloak.sql /docker-entrypoint-initdb.d/
COPY --chmod=0755 entrypoint.sh /entrypoint.sh

CMD [ "/bin/bash", "/entrypoint.sh" ]