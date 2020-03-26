#!/bin/bash 

## Apache Mirror. This will select the best mirror
MIRROR=$(curl 'https://www.apache.org/dyn/closer.cgi' | grep -o '<strong>[^<]*</strong>' | sed 's/<[^>]*>//g' | head -1)

## Scala Version
SCALA_VERSION=2.13 

## Kafka version
KAFKA_VERSION=2.4.1 

## Download Kafka
wget ${MIRROR}kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz -O ./kafka.tgz

## Run Docker Build 
docker build .

### Removing the tarball.
echo -e "\e[1mRemoving kafka tarball !!!\e[0m"
rm -f kafka.tgz

echo -e "\e[1mBuild Success!\e[0m"

