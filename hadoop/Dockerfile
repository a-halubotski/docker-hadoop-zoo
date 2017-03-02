FROM teqniksoft/java

MAINTAINER Andrew

ENV HADOOP_HOME /opt/hadoop
ENV HADOOP_LOG_DIR /app/hadoop/log
ENV HADOOP_TMP_DIR /app/hadoop/tmp
ENV HADOOP_OPTS -Djava.net.preferIPv4Stack=true

ENV HADOOP_DFS_NAME=/app/hadoop/dfs/name
ENV HADOOP_DFS_NAMESECONDARY=/app/hadoop/dfs/namesecondary
ENV HADOOP_DFS_DATA=/app/hadoop/dfs/data


ADD dist/hadoop-2.7.3.tar.gz /opt
RUN ln -s /opt/hadoop-2.7.3 /opt/hadoop

WORKDIR /opt/hadoop

COPY conf/*.xml etc/hadoop/
COPY dist/*.sh ./

# RUN locale-gen en_US en_US.UTF-8
#    apt-get update && \
#	apt-get install -y openssh-server && \
#    apt-get clean && \
#    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*rm -r /var/lib/apt/lists/*

RUN mkdir -p $HADOOP_TMP_DIR $HADOOP_LOG_DIR $HADOOP_DFS_DATA $HADOOP_DFS_NAME $HADOOP_DFS_NAMESECONDARY && \
	chmod +x ${HADOOP_HOME}/*.sh
#    ssh-keygen -t rsa -P "" -f ~/.ssh/id_dsa && \
#	cat ~/.ssh/id_dsa.pub >> ~/.ssh/authorized_keys && \
#    chmod 0600 ~/.ssh/authorized_keys && \


#RUN mv etc/hadoop/hadoop-env.sh etc/hadoop/hadoop-env.sh.ok
#    sed 's/\${JAVA_HOME}/\/usr\/lib\/jvm\/oracle_jdk8/' etc/hadoop/hadoop-env.sh.ok > etc/hadoop/hadoop-env.sh

EXPOSE 50070 50075 8042 8088
