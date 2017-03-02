#!/bin/bash

if [ "`ls -A $HADOOP_DFS_NAME`" == "" ]; then
	echo "Formatting namenode name directory: $HADOOP_DFS_NAME"
  	bin/hdfs namenode -format
fi

bin/hdfs namenode
