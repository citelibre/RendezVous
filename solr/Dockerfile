FROM solr:8.8.2



WORKDIR /opt/solr/server/solr/
#CMD mkdir -p /opt/solr/server/solr/citelibre
#CMD mkdir -p /opt/solr/server/solr/citelibre/conf
#CMD mkdir -p /opt/solr/server/solr/citelibre/data

#ADD citelibre /var/solr/data/citelibre
COPY schema.xml /tmp/schema.xml
COPY core.properties /tmp/core.properties
COPY solrconfig.xml /tmp/solrconfig.xml
#COPY solrconfig.xml /opt/solr/server/solr/citelibre
COPY  cite-libre.sh /docker-entrypoint-initdb.d/cite-libre.sh

#USER root 
#RUN chown -R solr /var/solr/data/citelibre 

#USER solr


