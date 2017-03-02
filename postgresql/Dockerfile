FROM postgres:9.5.3

MAINTAINER Andrew

RUN mkdir /hive

COPY sql/*.sql /hive/
COPY dist/init-hive-db.sh /docker-entrypoint-initdb.d/init-user-db.sh
