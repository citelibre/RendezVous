#!/bin/bash

list_users=$(/usr/share/elasticsearch/bin/elasticsearch-users list)

# $1: user
# $2: password
# $3: role
create_user() {
  if [[ ! $list_users =~ $1 ]]; then
    echo "je suis ici"
    /usr/share/elasticsearch/bin/elasticsearch-users useradd $1 -p $2 -r $3
  fi
}

create_user admin "*93n2US7fWog" kibana_system
create_user lutece "RKOmBI1sWaa*SFm1gx*H" superuser

#/usr/share/elasticsearch/bin/elasticsearch-users useradd admin -p "*93n2US7fWog" -r kibana_system
#/usr/share/elasticsearch/bin/elasticsearch-users useradd lutece -p "RKOmBI1sWaa*SFm1gx*H" -r superuser

#printf "y\nwo4yt0O0dada\nwo4yt0O0dada" | /usr/share/elasticsearch/bin/elasticsearch-reset-password -u kibana -i
