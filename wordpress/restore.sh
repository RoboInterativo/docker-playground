#!/bin/bash
TARGET=./backups
if [ ! -d $TARGET ]; then
  mkdir $TARGET
fi
if [  -d $TARGET ]; then
  echo $TARGET exist nothing to do
fi
docker run --network  wordpress_default  \
--volume $TARGET:/opt \
mariadb:lts mariadb  --user root --host=mydb \
--password=rootpassword </opt/mydb.sql
