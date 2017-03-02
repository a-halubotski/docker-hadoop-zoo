#!/bin/bash

__NETWORK=hadoop_net
__IMAGE=sqoop1-base
__CONTAINER=sqoop1-client
__ENV_FILE=hive-server.env

__COMMAND="/bin/bash"
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
docker run --name $__CONTAINER -ti --network=$__NETWORK --env-file=$__ENV_FILE $__IMAGE $__COMMAND
