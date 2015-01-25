#!/bin/bash

if [ -z "${POPCON_HOME}" ]; then
  POPCON_HOME=$(dirname $BASH_SOURCE)/..
fi

cd ${POPCON_HOME}
if [ -f "popcon-server.pid" ]; then
  PID=$(cat popcon-server.pid)
  kill ${PID}
else
  echo "popcon-server is not started"
fi