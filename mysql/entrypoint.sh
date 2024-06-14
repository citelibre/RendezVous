#!/bin/bash

lang_default="${LUTECE_DEFAULT_LANG:-fr}"

sed -i "s/'fr'/'$lang_default'/g" /docker-entrypoint-initdb.d/1-dump.sql

/usr/local/bin/docker-entrypoint.sh mariadbd