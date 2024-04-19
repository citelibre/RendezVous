#!/bin/bash

export WAIT_HOSTS=$DB_ADDR:$DB_PORT
export WAIT_HOSTS_TIMEOUT=600
export WAIT_SLEEP_INTERVAL=30
export WAIT_HOST_CONNECT_TIMEOUT=30

/tmp/wait 
/opt/keycloak/bin/kc.sh --spi-login-protocol-openid-connect-legacy-logout-redirect-uri=true start-dev
