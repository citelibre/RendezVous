#!/bin/bash

lang_default="${LUTECE_DEFAULT_LANG:-fr}"

sed -i "s/'fr'/'$lang_default'/g" /docker-entrypoint-initdb.d/1-dump.sql

url_citelibre=${URL_CITELIRE}
url_matomo_http=${URL_MATOMO_HTTP}
url_kibana=${URL_KIBANA}
url_keycloak=${URL_KEYCLOAK}
url_solr=${URL_SOLR}
url_mail=${URL_MAIL}

light_mode="${LIGHT_MODE:-False}"

if [ "$light_mode" = "False" ]; then
    rm /docker-entrypoint-initdb.d/1-light-dump.sql
    sed -i "s/http:\/\/localhost\//${url_matomo_http}\//g" /docker-entrypoint-initdb.d/1-dump.sql
    sed -i "s/http:\/\/localhost\//${url_matomo_http}\//g" /docker-entrypoint-initdb.d/2-dump-matomo.sql
    sed -i "s/http:\/\/localhost\//${url_matomo_http}\//g" /docker-entrypoint-initdb.d/3-dump-keycloak.sql

    sed -i "s/http:\/\/localhost:8080/$url_citelibre/g" /docker-entrypoint-initdb.d/1-dump.sql
    sed -i "s/http:\/\/localhost:8080/$url_citelibre/g" /docker-entrypoint-initdb.d/2-dump-matomo.sql
    sed -i "s/http:\/\/localhost:8080/$url_citelibre/g" /docker-entrypoint-initdb.d/3-dump-keycloak.sql

    sed -i "s/http:\/\/localhost:5601/$url_kibana/g" /docker-entrypoint-initdb.d/1-dump.sql
    sed -i "s/http:\/\/localhost:5601/$url_kibana/g" /docker-entrypoint-initdb.d/2-dump-matomo.sql
    sed -i "s/http:\/\/localhost:5601/$url_kibana/g" /docker-entrypoint-initdb.d/3-dump-keycloak.sql

    sed -i "s/http:\/\/localhost:8081/$url_keycloak/g" /docker-entrypoint-initdb.d/1-dump.sql
    sed -i "s/http:\/\/localhost:8081/$url_keycloak/g" /docker-entrypoint-initdb.d/2-dump-matomo.sql
    sed -i "s/http:\/\/localhost:8081/$url_keycloak/g" /docker-entrypoint-initdb.d/3-dump-keycloak.sql

    sed -i "s/http:\/\/localhost:1080/$url_mail/g" /docker-entrypoint-initdb.d/1-dump.sql
    sed -i "s/http:\/\/localhost:1080/$url_mail/g" /docker-entrypoint-initdb.d/2-dump-matomo.sql
    sed -i "s/http:\/\/localhost:1080/$url_mail/g" /docker-entrypoint-initdb.d/3-dump-keycloak.sql

    sed -i "s/http:\/\/localhost:8983/$url_mail/g" /docker-entrypoint-initdb.d/1-dump.sql
    sed -i "s/http:\/\/localhost:8983/$url_mail/g" /docker-entrypoint-initdb.d/2-dump-matomo.sql
    sed -i "s/http:\/\/localhost:8983/$url_mail/g" /docker-entrypoint-initdb.d/3-dump-keycloak.sql
else
    rm /docker-entrypoint-initdb.d/1-dump.sql /docker-entrypoint-initdb.d/2-dump-matomo.sql /docker-entrypoint-initdb.d/3-dump-keycloak.sql
    sed -i "s/http:\/\/localhost:8080/$url_citelibre/g" /docker-entrypoint-initdb.d/1-dump.sql
fi

/usr/local/bin/docker-entrypoint.sh mariadbd