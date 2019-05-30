#!/bin/bash

# remove 
#rpm -e telegraf && rpm -e kapacitor && rpm -e influxdb && rpm -e grafana && rpm -e chronograf

SOFT_PATH=/opt/soft/influxall

# install
sudo yum -y localinstall ${SOFT_PATH}/influxdb-1.7.6.x86_64.rpm && \
sudo yum -y localinstall ${SOFT_PATH}/telegraf-1.10.4-1.x86_64.rpm && \
# sudo yum -y localinstall ${SOFT_PATH}/chronograf-1.7.11.x86_64.rpm && \
# sudo yum -y localinstall ${SOFT_PATH}/kapacitor-1.5.2.x86_64.rpm && \
sudo yum -y localinstall ${SOFT_PATH}/grafana-6.2.1-1.x86_64.rpm

# start service
service influxdb start   && \
service telegraf  start  && \
service grafana-server start

# check status
service influxdb status     && \
service telegraf  status    && \
service grafana-server status  
