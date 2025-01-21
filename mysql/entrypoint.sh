#!/bin/bash

# check that this variable is set in the external.env file
lang_default="${LUTECE_DEFAULT_LANG:-en}"

if [[ "$lang_default" = "fr" ]] ; then 
	rm /docker-entrypoint-initdb.d/1-dump.sql
else 
	rm /docker-entrypoint-initdb.d/1-dump.fr.sql
fi

url_citelibre=${URL_CITELIBRE}
url_matomo_http=${URL_MATOMO_HTTP}
url_kibana=${URL_KIBANA}
url_keycloak=${URL_KEYCLOAK}
url_solr=${URL_SOLR}
url_mail=${URL_MAIL}

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


/usr/local/bin/docker-entrypoint.sh mariadbd