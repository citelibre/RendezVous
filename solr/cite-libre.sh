#!/bin/bash

mkdir -p  /var/solr/data/citelibre/conf 
mkdir -p /var/solr/data/citelibre/data


cat /tmp/schema.xml > /var/solr/data/citelibre/conf/managed-schema
cat /tmp/solrconfig.xml > /var/solr/data/citelibre/solrconfig.xml
cat /tmp/core.properties > /var/solr/data/citelibre/core.properties
