#!/bin/bash

echo "++ Replacing the connection with: ${HIVE_METASTORE_CONNECTION_URL}"

sed "s/__HIVE_METASTORE_CONNECTION_URL__/${HIVE_METASTORE_CONNECTION_URL}/" $HIVE_HOME/conf/hive-site.xml.example > $HIVE_HOME/conf/hive-site.xml

exec $@
