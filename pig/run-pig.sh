#!/bin/sh

__NETWORK=hadoop_net
__IMAGE=pig-base
__CONTAINER=pig-client

docker stop $__CONTAINER
docker rm $__CONTAINER
docker run -ti --rm --name $__CONTAINER -t --network=$__NETWORK $__IMAGE $1 $2 $3 $4 $5 $6 $7
