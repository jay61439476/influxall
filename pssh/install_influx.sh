#!/bin/bash
SOFT_PATH=/opt/soft/influx

yum -y localinstall ${SOFT_PATH}/influxdb-1.6.0.x86_64.rpm
yum -y localinstall ${SOFT_PATH}/chronograf-1.6.0.x86_64.rpm
yum -y localinstall ${SOFT_PATH}/telegraf-1.7.2-1.x86_64.rpm
yum -y localinstall ${SOFT_PATH}/grafana-5.2.2-1.x86_64.rpm 

service influxdb start   
service chronograf start
service telegraf  start 
service grafana-server start