#!/bin/bash

export WAIT_HOSTS_TIMEOUT=300
export WAIT_SLEEP_INTERVAL=30
export WAIT_HOST_CONNECT_TIMEOUT=30

tomcat=/usr/local/tomcat
TOMCAT_START="/opt/java/openjdk/bin/java -Djava.util.logging.config.file=${tomcat}/conf/logging.properties -Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager -Djdk.tls.ephemeralDHKeySize=2048 -Djava.protocol.handler.pkgs=org.apache.catalina.webresources -Dorg.apache.catalina.security.SecurityListener.UMASK=0027 -Dignore.endorsed.dirs= -classpath ${tomcat}/bin/bootstrap.jar:${tomcat}/bin/tomcat-juli.jar -Dcatalina.base=${tomcat} -Dcatalina.home=${tomcat} -Djava.io.tmpdir=${tomcat}/temp org.apache.catalina.startup.Bootstrap start"

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


echo "Config database"
sed -i "s/portal.user=.*/portal\.user=$db_user/" ${tomcat}/webapps/rendezvous/WEB-INF/conf/db.properties
sed -i "s/portal.password=.*/portal\.password=$db_password/"  ${tomcat}/webapps/rendezvous/WEB-INF/conf/db.properties
sed -i "s/\/lutece/\/$db_name/" ${tomcat}/webapps/rendezvous/WEB-INF/conf/db.properties
sed -i "s/db:3306/$db_host:$db_port/"  ${tomcat}/webapps/rendezvous/WEB-INF/conf/db.properties


# SMTP
# Pb with new version => delete this file 
rm  ${tomcat}/webapps/rendezvous/WEB-INF/conf/override/config.properties

echo "Config SMTP"
sed -i "s/mail.server=.*/mail.server=$mail_host/g"  ${tomcat}/webapps/rendezvous/WEB-INF/conf/config.properties 
sed -i "s/mail.server=.*/mail.server=$mail_host/g"  ${tomcat}/webapps/rendezvous/WEB-INF/templates/admin/system/config_properties.html

sed -i "s/mail.server.port=.*/mail.server.port=$mail_port/"  ${tomcat}/webapps/rendezvous/WEB-INF/conf/config.properties
sed -i "s/mail.server.port=.*/mail.server.port=$mail_port/"  ${tomcat}/webapps/rendezvous/WEB-INF/templates/admin/system/config_properties.html

sed -i "s/mail.username=.*/mail.username=$mail_user/"  ${tomcat}/webapps/rendezvous/WEB-INF/conf/config.properties 
sed -i "s/mail.username=.*/mail.username=$mail_user/"  ${tomcat}/webapps/rendezvous/WEB-INF/templates/admin/system/config_properties.html

sed -i "s/mail.password=.*/mail.password=$mail_password/"  ${tomcat}/webapps/rendezvous/WEB-INF/conf/config.properties 
sed -i "s/mail.password=.*/mail.password=$mail_password/"  ${tomcat}/webapps/rendezvous/WEB-INF/templates/admin/system/config_properties.html

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
