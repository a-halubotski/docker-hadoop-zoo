# SQOOP client

## Running client container:
Check *run-sqoop.sh* file.  

## Downloadables
### Sqoop binaries:  
http://ftp.byfly.by/pub/apache.org/sqoop/1.4.6/sqoop-1.4.6.bin__hadoop-2.0.4-alpha.tar.gz  
http://www-us.apache.org/dist/sqoop/1.4.6/sqoop-1.4.6.bin__hadoop-2.0.4-alpha.tar.gz  

### Documentation:  
https://sqoop.apache.org/docs/1.4.6/SqoopUserGuide.html  


## Importing data command
Also creates table in Hive.  

```
bin/sqoop import --connect jdbc:postgresql://postgresdb/movielense --username dman --password dman --verbose --table users --warehouse-dir /user/hive/warehouse --split-by id --hive-import

bin/sqoop import-all-tables --connect jdbc:postgresql://postgresdb/movielense --username dman --password dman --verbose --warehouse-dir /user/hive/warehouse --split-by id --hive-import
```
