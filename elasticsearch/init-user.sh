#!/bin/bash

list_users=$(/usr/share/elasticsearch/bin/elasticsearch-users list)

# $1: user
# $2: password
# $3: role
create_user() {
  if [[ ! $list_users =~ $1 ]]; then
    /usr/share/elasticsearch/bin/elasticsearch-users useradd $1 -p $2 -r $3
  fi
}

create_user admin "*93n2US7fWog" kibana_system
create_user lutece "RKOmBI1sWaa*SFm1gx*H" superuser
