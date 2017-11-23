#
# activeMQ 5.15.2
# Dependyce JDK8
#


FROM yi/centos7-jdk8u151
MAINTAINER Yi.Ma <findlymw@gmail.com>

RUN yum clean all
RUN yum -y update
# Install libs
WORKDIR /home/work/apps/
RUN wget http://archive.apache.org/dist/activemq/5.15.2/apache-activemq-5.15.2-bin.tar.gz
RUN mv apache-activemq-5.15.2-bin.tar.gz /usr/local/apache-activemq-5.15.2-bin.tar.gz
WORKDIR /usr/local/
RUN tar -zxvf apache-activemq-5.15.2-bin.tar.gz
RUN rm apache-activemq-5.15.2-bin.tar.gz
ADD activemq /etc/init.d/
RUN chmod 777 /etc/init.d/activemq
RUN chkconfig  activemq  on

EXPOSE 8161
EXPOSE 8162

COPY supervisord.conf /etc/supervisord.conf
CMD ["/usr/bin/supervisord"]