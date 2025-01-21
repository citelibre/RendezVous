ARG site=site-citelibre-rendezvous-1.0.9
ARG NAME_APP=rendezvous

# build the site and assemble the webapp
FROM lutece/builder AS builder
ARG site
ARG NAME_APP

WORKDIR /app
ADD pom.xml /app/pom.xml
ADD src /app/src

RUN --mount=type=cache,target=/root/.m2,rw mvn -Dmaven.artifact.threads=30 -e -U lutece:site-assembly -Pdev

RUN cd target && mv $(ls *.war) ${site}.war

# built tomcat
FROM tomcat:9.0-jdk11
ARG site
ARG NAME_APP

RUN apt update && apt install -y haproxy

ARG tomcat=/usr/local/tomcat
WORKDIR ${tomcat}
COPY --from=builder /app/target/${site}.war webapps
COPY haproxy.cfg /etc/haproxy/haproxy.cfg

RUN cd webapps && mkdir ${NAME_APP} &&  mv ${site}.war ${NAME_APP}/${NAME_APP}.war  && cd ${NAME_APP} && jar xvf ${NAME_APP}.war && rm ${NAME_APP}.war

# Add webapps folder
COPY webapp/WEB-INF webapps/${NAME_APP}/WEB-INF/
COPY webapp/js webapps/${NAME_APP}/js/

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
ENV LUTECE_INTERNAL_KEYCLOAK=

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
