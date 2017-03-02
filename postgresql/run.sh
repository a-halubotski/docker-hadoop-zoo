#!/bin/bash

__NETWORK=hadoop_net
__IMAGE=postgresdb
__CONTAINER=postgresdb
__VOL_BASE=/workspace/docker/containers/postgresdb

# $1 folder path
function makeDir 
{
	if [ ! -d $1 ]; then
		mkdir -p $1
	fi
}

makeDir $__VOL_BASE/data
makeDir $__VOL_BASE/log

docker stop $__CONTAINER
docker rm $__CONTAINER
docker run -d --name $__CONTAINER -t --network=$__NETWORK -v $__VOL_BASE/data:/var/lib/postgresql/data -v $__VOL_BASE/log:/var/log/postgresql -v /workspace/projects/movie-lense/ml-1m:/tmp/data -p 5432:5432 $__IMAGE
