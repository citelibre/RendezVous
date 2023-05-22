FROM jboss/keycloak:latest

env KEYCLOAK_USER=admin
env KEYCLOAK_PASSWORD=admin1234
env KEYCLOAK_LOGLEVEL=INFO 
env ROOT_LOGLEVEL=INFO
env DB_VENDOR=mysql
env DB_ADDR=db
env DB_DATABASE=keycloak
env DB_USER=root
env DB_PASSWORD=root
env DB_SCHEMA=public

COPY themes/mytheme /opt/jboss/keycloak/themes/mytheme  

