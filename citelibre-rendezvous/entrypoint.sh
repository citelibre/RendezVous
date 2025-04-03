#!/bin/bash

export WAIT_HOSTS_TIMEOUT=300
export WAIT_SLEEP_INTERVAL=30
export WAIT_HOST_CONNECT_TIMEOUT=30

tomcat=/usr/local/tomcat
TOMCAT_START="/opt/java/openjdk/bin/java -Djava.util.logging.config.file=${tomcat}/conf/logging.properties -Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager -Djdk.tls.ephemeralDHKeySize=2048 -Djava.protocol.handler.pkgs=org.apache.catalina.webresources -Dorg.apache.catalina.security.SecurityListener.UMASK=0027 -Dignore.endorsed.dirs= -classpath ${tomcat}/bin/bootstrap.jar:${tomcat}/bin/tomcat-juli.jar -Dcatalina.base=${tomcat} -Dcatalina.home=${tomcat} -Djava.io.tmpdir=${tomcat}/temp org.apache.catalina.startup.Bootstrap start"
site_folder=rendezvous

# variables db
db_name=${LUTECE_DB_NAME:-lutece}
db_host=${LUTECE_DB_HOST:-db}
db_port=${LUTECE_DB_PORT:-3306}
db_user=${LUTECE_DB_USER:-root}
db_password=${LUTECE_DB_PWD:-root}

export WAIT_HOSTS=${db_host}:${db_port}

# variables mail
mail_host="${LUTECE_MAIL_HOST:-mailpit}"
mail_port="${LUTECE_MAIL_PORT:-1025}"
mail_user="${LUTECE_MAIL_USER:-}"
mail_password="${LUTECE_MAIL_PWD:-}"

# available languages to switch to in BO only
echo "Configure languages"
default_fo_lang="${LUTECE_DEFAULT_LANG:-en}"
available_lang="${LUTECE_AVAILABLE_LANG:-en,fr}"
available_lang_date_formats="${AVAILABLE_LANG_DATE_FORMATS}"
sed -i "s/lutece.i18n.defaultLocale=.*/lutece.i18n.defaultLocale=$default_fo_lang/" ${tomcat}/webapps/${site_folder}/WEB-INF/conf/lutece.properties
sed -i "s/lutece.i18n.availableLocales=.*/lutece.i18n.availableLocales=$available_lang/" ${tomcat}/webapps/${site_folder}/WEB-INF/conf/lutece.properties
sed -i "s/lutece.format.date.short=.*/lutece.format.date.short==$available_lang_date_formats/" ${tomcat}/webapps/${site_folder}/WEB-INF/conf/lutece.properties

# temporary solution to replace English resources files (plugins translations) until fixed directly in the plugins
find . -name *_en.properties | sed 's/_en.properties//g' | awk '{ print "mv " $1 "_en.properties " $1 ".properties" }' | bash

echo "Config database"
sed -i "s/portal.user=.*/portal\.user=$db_user/" ${tomcat}/webapps/${site_folder}/WEB-INF/conf/db.properties
sed -i "s/portal.password=.*/portal\.password=$db_password/" ${tomcat}/webapps/${site_folder}/WEB-INF/conf/db.properties
sed -i "s/\/lutece/\/$db_name/" ${tomcat}/webapps/${site_folder}/WEB-INF/conf/db.properties
sed -i "s/db:3306/$db_host:$db_port/"  ${tomcat}/webapps/${site_folder}/WEB-INF/conf/db.properties

echo "Edit host"
url_citelibre=${URL_CITELIBRE}
url_citelibre_https=${URL_CITELIBRE_HTTPS}
url_citelibre_html=${URL_CITELIBRE_HTML}
url_kibana=${URL_KIBANA}
url_matomo_http=${URL_MATOMO_HTTP}
url_matomo_https=${URL_MATOMO_HTTPS}
url_keycloak=${URL_KEYCLOAK}

echo "Edit auth"
keycloak_mode=${KEYCLOAK_MODE:-true}

if $keycloak_mode; then
    echo "Keycloak mode"
    mv /tmp/oauth2/override/plugins/* ${tomcat}/webapps/rendezvous/WEB-INF/conf/override/plugins/.
    mv /tmp/oauth2/override/lutece.properties ${tomcat}/webapps/rendezvous/WEB-INF/conf/override/.

    sed -i "s/http%3A%2F%2Flocalhost/$url_citelibre_html/g" ${tomcat}/webapps/rendezvous/WEB-INF/conf/override/plugins/oauth2_context.xml
    sed -i "s/http:\/\/localhost:8081/$url_keycloak/g" ${tomcat}/webapps/rendezvous/WEB-INF/conf/override/plugins/mylutece.properties
    sed -i "s/http:\/\/localhost:8081/$url_keycloak/g" ${tomcat}/webapps/rendezvous/WEB-INF/conf/override/plugins/oauth2_context.xml
    sed -i "s/http:\/\/localhost:8081/$url_keycloak/g" ${tomcat}/webapps/rendezvous/WEB-INF/conf/override/plugins/mylutece-oauth2_context.xml

else
    echo "Database mode"
    mv /tmp/database/override/plugins/* ${tomcat}/webapps/rendezvous/WEB-INF/conf/override/plugins/.
    mkdir -p ${tomcat}/webapps/rendezvous/WEB-INF/templates/skin/plugins/mylutece/includes
    mv /tmp/database/user_login_multi_include.html ${tomcat}/webapps/rendezvous/WEB-INF/templates/skin/plugins/mylutece/includes/.
fi

sed -i "s/http:\/\/localhost:8080/$url_citelibre/g" ${tomcat}/webapps/rendezvous/WEB-INF/conf/config.properties
sed -i "s/https:\/\/localhost:8080/$url_citelibre_https/g" ${tomcat}/webapps/rendezvous/WEB-INF/conf/config.properties
sed -i "s/http%3A%2F%2Flocalhost/$url_citelibre_html/g" ${tomcat}/webapps/rendezvous/WEB-INF/conf/override/plugins/mylutece.properties
sed -i "s/http:\/\/localhost:8080/$url_citelibre/g" ${tomcat}/webapps/rendezvous/WEB-INF/conf/override/plugins/workflow-notifygru_context.xml


sed -i "s/http:\/\/localhost:5601/$url_kibana/g" ${tomcat}/webapps/rendezvous/WEB-INF/conf/override/plugins/kibana.properties

sed -i "s/matomo.default.server.http.url=.*/matomo.default.server.http.url=$url_matomo_http/g" ${tomcat}/webapps/rendezvous/WEB-INF/conf/override/plugins/matomo.properties
sed -i "s/matomo.default.server.https.url=.*/matomo.default.server.http.url=$url_matomo_https/g" ${tomcat}/webapps/rendezvous/WEB-INF/conf/override/plugins/matomo.properties


sed -i "s/http:\/\/localhost:8081/$url_keycloak/g" ${tomcat}/webapps/${site_folder}/WEB-INF/conf/override/plugins/mylutece.properties
sed -i "s/http:\/\/localhost:8081/$url_keycloak/g" ${tomcat}/webapps/${site_folder}/WEB-INF/conf/override/plugins/oauth2_context.xml
sed -i "s/http:\/\/localhost:8081/$url_keycloak/g" ${tomcat}/webapps/${site_folder}/WEB-INF/conf/override/plugins/mylutece-oauth2_context.xml

# SMTP
# Pb with new version => delete this file 
rm  ${tomcat}/webapps/${site_folder}/WEB-INF/conf/override/config.properties

echo "Config SMTP"
sed -i "s/mail.server=.*/mail.server=$mail_host/g"  ${tomcat}/webapps/${site_folder}/WEB-INF/conf/config.properties 
sed -i "s/mail.server=.*/mail.server=$mail_host/g"  ${tomcat}/webapps/${site_folder}/WEB-INF/templates/admin/system/config_properties.html

sed -i "s/mail.server.port=.*/mail.server.port=$mail_port/"  ${tomcat}/webapps/${site_folder}/WEB-INF/conf/config.properties
sed -i "s/mail.server.port=.*/mail.server.port=$mail_port/"  ${tomcat}/webapps/${site_folder}/WEB-INF/templates/admin/system/config_properties.html

sed -i "s/mail.username=.*/mail.username=$mail_user/"  ${tomcat}/webapps/${site_folder}/WEB-INF/conf/config.properties 
sed -i "s/mail.username=.*/mail.username=$mail_user/"  ${tomcat}/webapps/${site_folder}/WEB-INF/templates/admin/system/config_properties.html

sed -i "s/mail.password=.*/mail.password=$mail_password/"  ${tomcat}/webapps/${site_folder}/WEB-INF/conf/config.properties 
sed -i "s/mail.password=.*/mail.password=$mail_password/"  ${tomcat}/webapps/${site_folder}/WEB-INF/templates/admin/system/config_properties.html

echo "Launch tomcat server"
if [[ "$LUTECE_INTERNAL_KEYCLOAK" == "true" ]]
then
    echo "Enable haproxy on 8080"
    haproxy -f /etc/haproxy/haproxy.cfg &
    /wait && ${TOMCAT_START}
else
    echo "Disable haproxy on 8080"
    /wait && ${TOMCAT_START}
fi
