#!/bin/sh

__NETWORK=hadoop_net
__IMAGE=hadoop-base
__CONTAINER=hdfs-command
__VOL_BASE=`pwd`
# DO NOT REMOVE the container or you'll LOOSE all the data
#

docker run --rm --name $__CONTAINER -ti --network=$__NETWORK -v $__VOL_BASE/localFS:/tmp/local $__IMAGE bin/hdfs dfs $1 $2 $3 $4 $5 $6 $7 $8 $9
