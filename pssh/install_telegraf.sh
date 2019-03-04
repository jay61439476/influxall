#!/bin/bash
BASE_DIR=/Users/jay/code/work/influxall/
WORK_DIR=${BASE_DIR}/pssh
HOST_FILE=${WORK_DIR}/pssh_host_list_dt
SRC_PATH=${BASE_DIR}/tick
DES_PATH=/tmp

pscp -h ${HOST_FILE} ${SRC_PATH}/telegraf-1.9.1-1.x86_64.rpm ${DES_PATH}
pscp -h ${HOST_FILE} ${SRC_PATH}/conf/telegraf/telegraf-150.conf ${DES_PATH}/telegraf.conf

pssh -i -h ${HOST_FILE} "sudo yum  -y remove telegraf && sudo yum -y localinstall ${DES_PATH}/telegraf-1.9.1-1.x86_64.rpm"
pssh -i -h ${HOST_FILE} "cp ${DES_PATH}/telegraf.conf /etc/telegraf/"
pssh -i -h ${HOST_FILE} "service telegraf restart && service telegraf status && chkconfig --list telegraf"

# pssh -i -h ./pssh_host_list_dt "service telegraf  status"