#!/bin/bash

/usr/share/elasticsearch/bin/elasticsearch-users useradd admin -p "*93n2US7fWog" -r kibana_system
/usr/share/elasticsearch/bin/elasticsearch-users useradd lutece -p "RKOmBI1sWaa*SFm1gx*H" -r superuser

#printf "y\nwo4yt0O0dada\nwo4yt0O0dada" | /usr/share/elasticsearch/bin/elasticsearch-reset-password -u kibana -i
