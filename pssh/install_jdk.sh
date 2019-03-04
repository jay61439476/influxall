#!/bin/bash
TIME=$(date '+%Y-%m-%d-%H:%M:%S')
DES_PATH=/opt/soft/jdk

# remove openjdk
# centos 
# rpm -e --nodeps java-1.7.0-openjdk-headless-1.7.0.201-2.6.16.1.el7_6.x86_64
# rpm -e --nodeps java-1.8.0-openjdk-headless-1.8.0.191.b12-1.el7_6.x86_64
# rpm -e --nodeps java-1.7.0-openjdk-1.7.0.201-2.6.16.1.el7_6.x86_64
# rpm -e --nodeps java-1.8.0-openjdk-1.8.0.191.b12-1.el7_6.x86_64

# RedHatEnterpriseServer 6.8
rpm -e --nodeps java-1.5.0-gcj-1.5.0.0-29.1.el6.x86_64
rpm -e --nodeps java-1.7.0-openjdk-1.7.0.99-2.6.5.1.el6.x86_64
rpm -e --nodeps java-1.7.0-openjdk-devel-1.7.0.99-2.6.5.1.el6.x86_64
rpm -e --nodeps java-1.6.0-openjdk-1.6.0.38-1.13.10.4.el6.x86_64

tar -zxf ${DES_PATH}/jdk-8u192-linux-x64.tar.gz -C /usr/local/src/

cp /etc/profile ${DES_PATH}/profile_${TIME}

# env
echo "export JAVA_HOME=/usr/local/src/jdk1.8.0_192" >> /etc/profile
echo "export CLASSPATH=\$JAVA_HOME/lib/" >> /etc/profile
echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> /etc/profile
echo "export PATH JAVA_HOME CLASSPATH" >> /etc/profile



