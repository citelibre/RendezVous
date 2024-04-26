FROM keycloak/keycloak:18.0.0

env KEYCLOAK_USER=admin
env KEYCLOAK_PASSWORD=admin1234
env KEYCLOAK_LOGLEVEL=DEBUG 
env ROOT_LOGLEVEL=DEBUG
env DB_VENDOR=mysql
env DB_ADDR=db
env DB_PORT=3306
env DB_DATABASE=keycloak
env DB_USER=root
env DB_PASSWORD=root
env DB_SCHEMA=public

ENV KC_DB=mariadb
ENV KC_DB_URL=jdbc:mariadb://db:3306/keycloak
ENV KC_DB_USERNAME=root
ENV KC_DB_PASSWORD=root

COPY themes/mytheme /opt/keycloak/themes/mytheme  

COPY wait /tmp/wait
COPY wait-db-available.sh /docker-entrypoint-initdb.d

ENTRYPOINT ["/bin/sh", "/docker-entrypoint-initdb.d"]
