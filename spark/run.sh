#!/bin/bash

__IMAGE=spark-base
__CONTAINER=spark-client
__NETWORK=hadoop_net
__VOL_BASE=/workspace/projects/spark/jobs

docker run --rm --name $__CONTAINER -ti --network=$__NETWORK -p 8881:8080 -v $__VOL_BASE:/app/spark $__IMAGE /bin/bash

