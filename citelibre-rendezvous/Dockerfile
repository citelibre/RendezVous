FROM tomcat:9.0-jdk11



ARG site=site-citelibre-rendezvous-1.0.9

ARG tomcat=/usr/local/tomcat
WORKDIR ${tomcat}
COPY target/${site}.war webapps

RUN cd webapps && mkdir rendezvous &&  mv ${site}.war rendezvous/rendezvous.war  && cd rendezvous && jar xvf rendezvous.war && rm rendezvous.war

#ADD webapp /app/webapp
COPY webapp/WEB-INF webapps/rendezvous/WEB-INF/



COPY entrypoint.sh /entrypoint.sh

COPY wait /wait

RUN chmod +x /wait 
RUN chmod +x /entrypoint.sh

ENV LUTECE_DB_HOST=
ENV LUTECE_DB_PORT=
ENV LUTECE_DB_NAME=
ENV LUTECE_DB_USER=
ENV LUTECE_DB_PWD=
ENV LUTECE_MAIL_HOST=
ENV LUTECE_MAIL_PORT=
ENV LUTECE_MAIL_USER=
ENV LUTECE_MAIL_PWD=



ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]





