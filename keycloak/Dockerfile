FROM keycloak/keycloak:18.0.0

ENV KEYCLOAK_USER=admin
ENV KEYCLOAK_PASSWORD=admin1234
ENV KEYCLOAK_LOGLEVEL=DEBUG 
ENV ROOT_LOGLEVEL=DEBUG
ENV DB_VENDOR=mysql
ENV DB_ADDR=db
ENV DB_PORT=3306
ENV DB_DATABASE=keycloak
ENV DB_USER=root
ENV DB_PASSWORD=root
ENV DB_SCHEMA=public

ENV KC_DB=mariadb
ENV KC_DB_URL=jdbc:mariadb://db:3306/keycloak
ENV KC_DB_USERNAME=root
ENV KC_DB_PASSWORD=root

COPY themes/mytheme /opt/keycloak/themes/mytheme  

COPY wait /tmp/wait
COPY wait-db-available.sh /docker-entrypoint-initdb.d

ENTRYPOINT ["/bin/sh", "/docker-entrypoint-initdb.d"]
