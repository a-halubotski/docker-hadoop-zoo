#!/bin/bash

__NETWORK=hadoop_net
__IMAGE=sqoop2-base
__CONTAINER=sqoop2-server
#__COMMAND=""
#__VOL_BASE=/workspace/docker/containers/hadoop

function makeDir
{
	if [ ! -d $1 ]; then
		mkdir -p $1
    fi
}

# makeDir $__VOL_BASE/dfs/name

docker stop $__CONTAINER
docker rm $__CONTAINER
docker run -d --name $__CONTAINER -t --network=$__NETWORK $__IMAGE $__COMMAND
