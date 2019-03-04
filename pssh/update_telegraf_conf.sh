#!/bin/bash
BASE_DIR=/Users/jay/code/work/influxall/
WORK_DIR=${BASE_DIR}/pssh
HOST_FILE=${WORK_DIR}/pssh_host_list_dt
SRC_PATH=${BASE_DIR}/tick

pscp -h ${HOST_FILE} ${SRC_PATH}/conf/telegraf/telegraf-150.conf /etc/telegraf/telegraf.conf

pssh -i -h ${HOST_FILE} "service telegraf restart && service telegraf status"
