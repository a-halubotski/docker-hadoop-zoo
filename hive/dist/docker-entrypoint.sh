#!/bin/bash

echo "++ Replacing the connection with: ${CONNECTION_URL}"

sed "s/__CONNECTION_URL__/${CONNECTION_URL}/" $HIVE_HOME/conf/hive-site.xml.example > $HIVE_HOME/conf/hive-site.xml

exec $@
