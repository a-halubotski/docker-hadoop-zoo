#!/bin/sh

__NETWORK=hadoop_net
__IMAGE=hive-base
__CONTAINER=hive-server
__COMMAND="./start-hive.sh"
__ENV_FILE=hive-server.env

docker stop $__CONTAINER
docker rm $__CONTAINER
docker run -d --name $__CONTAINER -t --network=$__NETWORK --env-file=$__ENV_FILE $__IMAGE $__COMMAND
