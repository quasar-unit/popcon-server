#!/bin/bash

if [ -z "${POPCON_HOME}" ]; then
  POPCON_HOME=$(dirname $BASH_SOURCE)/..
fi

bash ${POPCON_HOME}/bin/stop-sever.sh
bash ${POPCON_HOME}/bin/start-server.sh