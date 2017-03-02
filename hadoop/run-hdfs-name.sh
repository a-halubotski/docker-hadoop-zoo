#!/bin/bash

__NETWORK=hadoop_net
__IMAGE=hadoop-base
__CONTAINER=hdfs-name
__COMMAND="./start-namenode.sh"
__VOL_BASE=/workspace/docker/containers/hadoop

function makeDir
{
	if [ ! -d $1 ]; then
		mkdir -p $1
    fi
}

makeDir $__VOL_BASE/dfs/name

docker stop $__CONTAINER
docker rm $__CONTAINER
docker run -d --name $__CONTAINER -t --network=$__NETWORK -v $__VOL_BASE/dfs/name:/app/hadoop/dfs/name -p 50070:50070 $__IMAGE $__COMMAND
