#!/bin/sh

__NETWORK=hadoop_net
__IMAGE=hive-base
__CONTAINER=hive-beeline
__COMMAND="bin/beeline -u jdbc:hive2://hive-server:10000"

docker stop $__CONTAINER
docker rm $__CONTAINER
docker run --rm --name $__CONTAINER -ti --network=$__NETWORK $__IMAGE $__COMMAND
