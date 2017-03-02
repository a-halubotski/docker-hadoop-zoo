#!/bin/sh

__NETWORK=hadoop_net
__IMAGE=hive-base
__CONTAINER=hive-metastore
__COMMAND="bin/hive --service metastore"
__ENV_FILE=hive-metastore.env

docker stop $__CONTAINER
docker rm $__CONTAINER
docker run -d --name $__CONTAINER -t --network=$__NETWORK --env-file=$__ENV_FILE $__IMAGE $__COMMAND
