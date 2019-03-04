#!/bin/bash
WORK_DIR=~/tools/pssh/
HOST_FILE=${WORK_DIR}/pssh_host_list_dt
SRC_PATH=~/tmp/soft/
DES_PATH=/opt/soft/jdk
INSTALL_SCRIPT=install_jdk.sh

pssh -i -h ${HOST_FILE} "mkdir -p ${DES_PATH}"

pscp -h ${HOST_FILE} ${SRC_PATH}/jdk-8u192-linux-x64.tar.gz ${DES_PATH}
pscp -h ${HOST_FILE} ${WORK_DIR}/${INSTALL_SCRIPT} ${DES_PATH}
pssh -i -h ${HOST_FILE} ${DES_PATH}/${INSTALL_SCRIPT}

pssh -i -h ${HOST_FILE} "source /etc/profile && java -version"
