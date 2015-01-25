#!/bin/bash

if [ -z "${POPCON_HOME}" ]; then
  POPCON_HOME=$(dirname $BASH_SOURCE)/..
fi

cd ${POPCON_HOME}
nohup java -Dspring.config.location=file:conf/popcon-server.yml -jar popcon-server.jar 1> /dev/null 2>&1 &