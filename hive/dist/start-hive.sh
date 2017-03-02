#!/bin/bash

$HADOOP_HOME/bin/hdfs dfs -mkdir       /tmp
$HADOOP_HOME/bin/hdfs dfs -mkdir -p    /user/hive/warehouse
$HADOOP_HOME/bin/hdfs dfs -chmod g+w   /tmp
$HADOOP_HOME/bin/hdfs dfs -chmod g+w   /user/hive/warehouse

cd $HIVE_HOME/bin
./hiveserver2 --hiveconf hive.server2.enable.doAs=false
