#!/bin/bash

MY_USER=$1
MY_PASSWORD=$2
SSH_OPTS="-o StrictHostKeyChecking=no"

SSHPASS="sshpass -p ${MY_PASSWORD}"
SCP="${SSHPASS} scp ${SSH_OPTS}"
SSH="${SSHPASS} ssh ${SSH_OPTS}"
TARGET="$MY_USER@popcon.io"

#echo ${SSH}

function execute() {
  local msg=$1
  local cmd=$2

  echo ${msg}
  ${SSH} ${TARGET} ${cmd}
}

echo "copy to popcon-server"
${SCP} target/popcon-server.tar.gz ${TARGET}:~/popcon-server.tar.gz
execute "1. stop server" 'bash ~/popcon-server/bin/stop-server.sh'
execute "2. remove older" 'rm -rf ~/popcon-server'
execute "3. unpack distributions" 'tar xzf ~/popcon-server.tar.gz'
execute "4. start server" 'bash ~/popcon-server/bin/start-server.sh'

exit 0