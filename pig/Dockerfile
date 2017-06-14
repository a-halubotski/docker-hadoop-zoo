FROM hadoop-base

MAINTAINER Andrew

ADD dist/pig-0.16.0.tar.gz /opt

RUN ln -s /opt/pig-0.16.0 /opt/pig

WORKDIR /opt/pig

ENV PIG_OPTS -Dmapreduce.job.queuename=hadoop

