FROM hive-base

MAINTAINER Andrew

ENV SQOOP_HOME /opt/sqoop
ENV HADOOP_CONF_DIR $HADOOP_HOME/etc/hadoop

#RUN curl -s http://www-us.apache.org/dist/hive/hive-${HIVE_VERSION}/apache-hive-${HIVE_VERSION}-bin.tar.gz | 
ADD dist/sqoop-1.4.6.bin__hadoop-2.0.4-alpha.tar.gz /opt

RUN ln -s /opt/sqoop-1.4.6.bin__hadoop-2.0.4-alpha /opt/sqoop

WORKDIR /opt/sqoop

COPY dist/postgresql-9.4.1209.jre7.jar lib/postgresql-jdbc.jar

#RUN mv conf/sqoop.properties conf/sqoop.properties.ok && \
#    sed 's/\/etc\/hadoop\/conf\/$/\/opt\/hadoop\/etc\/hadoop/' conf/sqoop.properties.ok > conf/sqoop.properties

COPY dist/start-sqoop.sh ./
RUN chmod +x ./start-sqoop.sh

#RUN bin/sqoop2-tool upgrade

#CMD ["./start-sqoop.sh"]
