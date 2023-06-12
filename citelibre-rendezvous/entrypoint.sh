#!/bin/bash

tomcat=/usr/local/tomcat

if [[ ! -z "$LUTECE_DB_HOST"  && ! -z "$LUTECE_DB_USER" && ! -z "$LUTECE_DB_PWD" && ! -z "$LUTECE_DB_NAME" ]]
then

port="${LUTECE_DB_PORT:-3306}"
echo "Launch with external database"
sed -i "s/portal.user=.*/portal\.user=$LUTECE_DB_USER/" ${tomcat}/webapps/rendezvous/WEB-INF/conf/db.properties
sed -i "s/portal.password=.*/portal\.password=$LUTECE_DB_PWD/"  ${tomcat}/webapps/rendezvous/WEB-INF/conf/db.properties
sed -i "s/\/lutece/\/$LUTECE_DB_NAME/" ${tomcat}/webapps/rendezvous/WEB-INF/conf/db.properties
sed -i "s/db:3306/$LUTECE_DB_HOST:$port/"  ${tomcat}/webapps/rendezvous/WEB-INF/conf/db.properties
echo "configure database is "
cat  ${tomcat}/webapps/rendezvous/WEB-INF/conf/db.properties
fi 

# SMTP
# Pb with new version => delete this file 
rm  ${tomcat}/webapps/rendezvous/WEB-INF/conf/override/config.properties
if [[  -z "$LUTECE_MAIL_HOST" ]]
then
echo "Launch with internal SMTP"
sed -i "s/mail.server=.*/mail.server=fake-smtp/g"  ${tomcat}/webapps/rendezvous/WEB-INF/conf/config.properties 
sed -i "s/mail.username=.*//"  ${tomcat}/webapps/rendezvous/WEB-INF/conf/config.properties 
sed -i "s/mail.password=.*//"  ${tomcat}/webapps/rendezvous/WEB-INF/conf/config.properties 
# report in html because after tomcatstarted it will be copied but the params i nconfig are load correctly
# so it's just for coordonate values
sed -i "s/mail.server=.*/mail.server=fake-smtp/g"  ${tomcat}/webapps/rendezvous/WEB-INF/templates/admin/system/config_properties.html
sed -i "s/mail.username=.*//"  ${tomcat}/webapps/rendezvous/WEB-INF/templates/admin/system/config_properties.html
sed -i "s/mail.password=.*//"  ${tomcat}/webapps/rendezvous/WEB-INF/templates/admin/system/config_properties.html

else
echo "Launch with external SMTP"
portMail="${LUTECE_MAIL_PORT:-25}"
sed -i "s/mail.server=.*/mail.server=$LUTECE_MAIL_HOST/"  ${tomcat}/webapps/rendezvous/WEB-INF/conf/config.properties
sed -i "s/mail.server.port=.*/mail.server.port=$portMail/"  ${tomcat}/webapps/rendezvous/WEB-INF/conf/config.properties

sed -i "s/mail.server=.*/mail.server=$LUTECE_MAIL_HOST/"  ${tomcat}/webapps/rendezvous/WEB-INF/templates/admin/system/config_properties.html
sed -i "s/mail.server.port=.*/mail.server.port=$portMail/"  ${tomcat}/webapps/rendezvous/WEB-INF/templates/admin/system/config_properties.html

if [[  ! -z "$LUTECE_MAIL_USER" ]]
then
sed -i "s/mail.username=.*//" ${tomcat}/webapps/rendezvous/WEB-INF/conf/config.properties
sed -i "s/mail.password=.*//"  ${tomcat}/webapps/rendezvous/WEB-INF/conf/config.properties
sed -i "s/mail.username=.*//"  ${tomcat}/webapps/rendezvous/WEB-INF/templates/admin/system/config_properties.html
sed -i "s/mail.password=.*//"  ${tomcat}/webapps/rendezvous/WEB-INF/templates/admin/system/config_properties.html
sed -i "s/mail.username=.*/mail.username=$LUTECE_MAIL_USER/"  ${tomcat}/webapps/rendezvous/WEB-INF/conf/config.properties
sed -i "s/mail.password=.*/mail.password=$LUTECE_MAIL_PWD/"  ${tomcat}/webapps/rendezvous/WEB-INF/conf/config.properties
sed -i "s/mail.username=.*/mail.username=$LUTECE_MAIL_USER/"  ${tomcat}/webapps/rendezvous/WEB-INF/templates/admin/system/config_properties.html
sed -i "s/mail.password=.*/mail.password=$LUTECE_MAIL_PWD/"  ${tomcat}/webapps/rendezvous/WEB-INF/templates/admin/system/config_properties.html
fi
fi


if [[ ! -z "$LUTECE_DB_HOST"  && ! -z "$LUTECE_DB_USER" && ! -z "$LUTECE_DB_PWD" && ! -z "$LUTECE_DB_NAME" ]]
then
export WAIT_HOSTS=$LUTECE_DB_HOST:${LUTECE_DB_PORT:-3306}
else
export WAIT_HOSTS=db:3306
fi
export WAIT_HOSTS_TIMEOUT=300
export WAIT_SLEEP_INTERVAL=30
export WAIT_HOST_CONNECT_TIMEOUT=30

/wait && /usr/lib/jvm/default-java/bin/java -Dmail.session.debug=true -Dmail.smtp.starttls.enable=false -Djava.util.logging.config.file=/var/lib/tomcat9/conf/logging.properties -Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager -Djava.awt.headless=true -Xms512m -Xmx2048m -Djdk.tls.ephemeralDHKeySize=2048 -classpath /usr/share/tomcat9/bin/bootstrap.jar:/usr/share/tomcat9/bin/tomcat-juli.jar -Dcatalina.base=/var/lib/tomcat9 -Dcatalina.home=/usr/share/tomcat9 -Djava.io.tmpdir=/tmp/tomcat9-tomcat9-tmp org.apache.catalina.startup.Bootstrap start
