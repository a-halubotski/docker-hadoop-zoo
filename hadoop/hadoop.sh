#!/bin/sh

__NETWORK=hadoop_net
__IMAGE=hadoop-base
__CONTAINER=hadoop-command

# DO NOT REMOVE the container or you'll LOOSE all the data
#

docker run --rm --name $__CONTAINER -ti --network=$__NETWORK $__IMAGE bin/hadoop $1 $2 $3 $4 $5 $6 $7 $8 $9
