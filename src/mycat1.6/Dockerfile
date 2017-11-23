#
# mycat 1.6-RELEASE
# Dependyce JDK8
#


FROM yi/centos7-jdk8u151
MAINTAINER Yi.Ma <findlymw@gmail.com>

RUN yum clean all
RUN yum -y update
# Install libs
WORKDIR /home/work/apps/
RUN wget http://dl.mycat.io/1.6-RELEASE/Mycat-server-1.6-RELEASE-20161028204710-linux.tar.gz
RUN mv Mycat-server-1.6-RELEASE-20161028204710-linux.tar.gz /usr/local/Mycat-server-1.6-RELEASE-20161028204710-linux.tar.gz
WORKDIR /usr/local/
RUN tar -zxvf Mycat-server-1.6-RELEASE-20161028204710-linux.tar.gz
RUN rm Mycat-server-1.6-RELEASE-20161028204710-linux.tar.gz

WORKDIR /usr/local/mycat/bin/
RUN chmod -R 777 mycat

ENV MYCAT_HOME=/usr/local/mycat


EXPOSE 8066

COPY supervisord.conf /etc/supervisord.conf
CMD ["/usr/bin/supervisord"]