FROM hadoop-base

MAINTAINER Andrew

ENV HIVE_VERSION 2.1.1
ENV HIVE_HOME /opt/hive

#RUN curl -s http://www-us.apache.org/dist/hive/hive-${HIVE_VERSION}/apache-hive-${HIVE_VERSION}-bin.tar.gz | 
ADD dist/apache-hive-2.1.1-bin.tar.gz /opt

RUN ln -s /opt/apache-hive-2.1.1-bin /opt/hive

COPY dist/postgresql-9.4.1209.jre7.jar $HIVE_HOME/lib/postgresql-jdbc.jar

WORKDIR /opt/hive

COPY conf/* conf/
COPY dist/start-hive.sh .
COPY dist/docker-entrypoint.sh /

RUN chmod +x start-hive.sh /docker-entrypoint.sh

EXPOSE 10000 10002

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["start-hive.sh"]
