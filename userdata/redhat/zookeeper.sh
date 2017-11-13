#!/bin/bash

yum -y install java

KAFKA_DOWNLOAD=kafka_2.12-1.0.0

curl -O http://apache.mediamirrors.org/kafka/1.0.0/$KAFKA_DOWNLOAD.tgz

tar -zxvf $KAFKA_DOWNLOAD.tgz -C /opt
ln -s /opt/$KAFKA_DOWNLOAD /opt/kafka

nohup /opt/kafka/bin/zookeeper-server-start.sh /opt/kafka/config/zookeeper.properties > /dev/null 2>&1 &