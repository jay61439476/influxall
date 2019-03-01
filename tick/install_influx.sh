#!/bin/bash

# remove 
#rpm -e telegraf && rpm -e kapacitor && rpm -e influxdb && rpm -e grafana && rpm -e chronograf

SOFT_PATH=/opt/soft/influxall

# download
#wget -P ${SOFT_PATH} https://dl.influxdata.com/telegraf/releases/telegraf-1.9.1-1.x86_64.rpm && \
#wget -P ${SOFT_PATH} https://dl.influxdata.com/influxdb/releases/influxdb-1.7.2.x86_64.rpm && \
#wget -P ${SOFT_PATH} https://dl.influxdata.com/chronograf/releases/chronograf-1.7.5.x86_64.rpm && \
#wget -P ${SOFT_PATH} https://dl.influxdata.com/kapacitor/releases/kapacitor-1.5.2.x86_64.rpm && \
#wget -P ${SOFT_PATH} https://dl.grafana.com/oss/release/grafana-5.4.2-1.x86_64.rpm  && \

# install
sudo yum -y localinstall ${SOFT_PATH}/telegraf-1.9.1-1.x86_64.rpm && \
sudo yum -y localinstall ${SOFT_PATH}/influxdb-1.7.2.x86_64.rpm && \
sudo yum -y localinstall ${SOFT_PATH}/chronograf-1.7.5.x86_64.rpm && \
sudo yum -y localinstall ${SOFT_PATH}/kapacitor-1.5.2.x86_64.rpm && \
sudo yum -y localinstall ${SOFT_PATH}/grafana-5.4.2-1.x86_64.rpm

# start service
service influxdb start   && \
service chronograf start && \
service telegraf  start  && \
service kapacitor  start && \
service grafana-server start
# check status
service influxdb status     && \
service chronograf status   && \
service telegraf  status    && \
service kapacitor  status   && \
service grafana-server status  
