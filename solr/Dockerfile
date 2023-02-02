FROM solr:8.8.2
ENV SOLR_USER="solr" \
  SOLR_UID="8983" \
  SOLR_GROUP="solr" \
  SOLR_GID="8983"


USER root

RUN cd /opt/solr/server/lib/ext/ && curl -O https://repo1.maven.org/maven2/org/locationtech/jts/jts-core/1.16.1/jts-core-1.16.1.jar




#ADD schema.xml /tmp
#ADD solrconfig.xml /tmp

WORKDIR /opt/solr/server/solr/
RUN mkdir -p  /var/solr/data/citelibre/conf/managed-schema 

COPY schema.xml /var/solr/data/citelibre/conf/managed-schema
COPY solrconfig.xml /var/solr/data/citelibre/
COPY core.properties /var/solr/data/citelibre/


USER root
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/solr/ && chmod -R +x /opt/solr/
RUN chown -R $SOLR_USER:$SOLR_GROUP /var/solr/data/citelibre && chmod -R +x /var/solr/data/citelibre
USER solr


