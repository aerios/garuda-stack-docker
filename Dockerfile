FROM ubuntu:14.04

COPY scripts/install-defaults.sh install-defaults.sh 
RUN ["/bin/bash", "install-defaults.sh"]
RUN ["/usr/sbin/sshd","-D"]

COPY  scripts/install-java.sh install-java.sh
RUN ["/bin/bash", "install-java.sh"]

COPY scripts/install-hadoop.sh install-hadoop.sh
RUN ["/bin/bash","install-hadoop.sh"]

ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre/
ENV HADOOP_HOME=/usr/local/hadoop
ENV PATH=$PATH:$HADOOP_HOME/bin

COPY config/core-site.xml /usr/local/hadoop/etc/core-site.xml
COPY config/hdfs-site.xml /usr/local/hadoop/etc/hdfs-site.xml
COPY scripts/setup-hdfs.sh setup-hdfs.sh
RUN ["/bin/bash","setup-hdfs.sh"]

CMD ["hdfs","dfs -ls /"]