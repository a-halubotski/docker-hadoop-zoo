FROM hadoop-base

MAINTAINER Andrew

ADD dist/spark-2.1.0-bin-hadoop2.7.tgz /opt

RUN ln -s /opt/spark-2.1.0-bin-hadoop2.7 /opt/spark2

# remove when parent image is rebuilt
ENV HADOOP_CONF_DIR /opt/hadoop/etc/hadoop
ENV YARN_CONF_DIR /opt/hadoop/etc/hadoop

WORKDIR /opt/spark2

EXPOSE 8080
