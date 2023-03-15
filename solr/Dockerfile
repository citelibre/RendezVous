FROM solr:9.1.1

WORKDIR /opt/solr/server/solr/



COPY schema.xml /tmp/schema.xml
COPY core.properties /tmp/core.properties
COPY solrconfig.xml /tmp/solrconfig.xml
COPY cite-libre.sh /docker-entrypoint-initdb.d/cite-libre.sh



