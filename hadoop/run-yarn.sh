#!/bin/sh

__NETWORK=hadoop_net
__IMAGE=hadoop-base
__CONTAINER=yarn
__COMMAND="./start-yarn.sh"
__HOST=yarn
#__COMMAND=/bin/bash

docker stop $__CONTAINER
docker rm $__CONTAINER
docker run -d --name $__CONTAINER -t --network=$__NETWORK -p 8042:8042 -p 8088:8088 -h $__HOST $__IMAGE $__COMMAND
