#
# zookeeper 3.4.11 stable
# Dependyce JDK8
#


FROM yi/centos7-jdk8u151
MAINTAINER Yi.Ma <findlymw@gmail.com>

RUN yum clean all
RUN yum -y update
# Install libs
WORKDIR /home/work/apps/
RUN wget https://mirrors.tuna.tsinghua.edu.cn/apache/zookeeper/zookeeper-3.4.11/zookeeper-3.4.11.tar.gz
RUN mv zookeeper-3.4.11.tar.gz /usr/local/zookeeper-3.4.11.tar.gz
WORKDIR /usr/local/
RUN tar -zxvf zookeeper-3.4.11.tar.gz
RUN rm zookeeper-3.4.11.tar.gz
WORKDIR /usr/local/zookeeper-3.4.11/conf/
COPY zoo.cfg /usr/local/zookeeper-3.4.11/conf/zoo.cfg

WORKDIR /home/work/apps/

RUN mkdir -p /data/zookeeper/data
RUN mkdir -p /data/zookeeper/logs

ENV ZOOKEEPER_HOME=/usr/local/zookeeper-3.4.11
ENV PATH=$ZOOKEEPER_HOME/bin:$PATH

EXPOSE 2888
EXPOSE 3888

COPY supervisord.conf /etc/supervisord.conf
CMD ["/usr/bin/supervisord"]
