#!/bin/bash
WORK_DIR=~/tools/pssh/
HOST_FILE=${WORK_DIR}/pssh_host_list_dt
SRC_PATH=/Users/jay/tmp/soft/influx
DES_PATH=/opt/soft/influx
INSTALL_SCRIPT=install_influx.sh

# create dir
pssh -i -h ${HOST_FILE} "mkdir -p ${DES_PATH}"

# scp file
pscp -h ${HOST_FILE} ${SRC_PATH}/influxdb-1.6.0.x86_64.rpm ${DES_PATH}
pscp -h ${HOST_FILE} ${SRC_PATH}/telegraf-1.7.2-1.x86_64.rpm ${DES_PATH}
pscp -h ${HOST_FILE} ${SRC_PATH}/grafana-5.2.2-1.x86_64.rpm ${DES_PATH}
pscp -h ${HOST_FILE} ${SRC_PATH}/chronograf-1.6.0.x86_64.rpm ${DES_PATH}

# install
pscp -h ${HOST_FILE} ${WORK_DIR}/${INSTALL_SCRIPT}  ${DES_PATH}
pssh -i -h ${HOST_FILE} ${DES_PATH}/${INSTALL_SCRIPT}

# check 
pssh -i -h ${HOST_FILE} "service influxdb status"
pssh -i -h ${HOST_FILE} "service chronograf status"   
pssh -i -h ${HOST_FILE} "service telegraf  status"    
pssh -i -h ${HOST_FILE} "service grafana-server status"  