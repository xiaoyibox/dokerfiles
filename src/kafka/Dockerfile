#
# kafka 1.0.0
#

FROM yi/centos7-jdk8u151
MAINTAINER Yi.Ma <findlymw@gmail.com>


WORKDIR /home/work/apps/

RUN wget http://www-us.apache.org/dist/kafka/1.0.0/kafka_2.11-1.0.0.tgz
RUN tar -xzvf kafka_2.11-1.0.0.tgz
RUN mv kafka_2.11-1.0.0 /usr/local/

COPY server.properties /usr/local/kafka_2.11-1.0.0/config/

ENV KAFKA_HOME=/usr/local/kafka_2.11-1.0.0
ENV PATH=$PATH:$KAFKA_HOME/bin

COPY supervisord.conf /etc/supervisord.conf
CMD ["/usr/bin/supervisord"]

