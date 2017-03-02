#!/bin/bash

__NUM=$1

if [ "$__NUM" = "" ]; then
	__NUM=1
fi

__NETWORK=hadoop_net
__IMAGE=hadoop-pseudo
__CONTAINER=hdfs-data-$__NUM
__COMMAND="bin/hdfs datanode"
__VOLUME=/workspace/docker/containers/hadoop/dfs/data-$__NUM
__PUBLIC_PORT="5007$__NUM"

function makeDir
{
    if [ ! -d $1 ]; then
        mkdir -p $1
    fi
}

makeDir $__VOLUME

docker stop $__CONTAINER
docker rm $__CONTAINER
docker run -d --name $__CONTAINER -t --network=$__NETWORK -v $__VOLUME:/app/hadoop/dfs/data -p $__PUBLIC_PORT:50075 $__IMAGE $__COMMAND
