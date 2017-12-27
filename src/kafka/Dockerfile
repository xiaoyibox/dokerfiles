#
# kafka 0.9.0.1
#

FROM yi/centos7-jdk8u151
MAINTAINER Yi.Ma <findlymw@gmail.com>


WORKDIR /home/work/apps/

RUN wget http://mirrors.hust.edu.cn/apache/kafka/0.9.0.1/kafka_2.11-0.9.0.1.tgz
RUN tar -xzvf kafka_2.11-0.9.0.1.tgz
RUN mv kafka_2.11-0.9.0.1 /usr/local/

ENV KAFKA_HOME=/usr/local/kafka_2.11-0.9.0.1
ENV PATH=$PATH:$KAFKA_HOME/bin

