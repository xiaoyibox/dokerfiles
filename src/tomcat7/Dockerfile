#
# Tomcat7
#

FROM yi/centos7-jdk8u151
MAINTAINER Yi.Ma <findlymw@gmail.com>

RUN yum clean all
RUN yum -y update
# Install libs
WORKDIR /home/work/apps/
RUN wget http://mirrors.tuna.tsinghua.edu.cn/apache/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz
RUN mv apache-tomcat-7.0.82.tar.gz /usr/local/apache-tomcat-7.0.82.tar.gz
WORKDIR /usr/local/
RUN tar -zxvf apache-tomcat-7.0.82.tar.gz
RUN rm apache-tomcat-7.0.82.tar.gz
WORKDIR /home/work/apps/

EXPOSE 8080
COPY supervisord.conf /etc/supervisord.conf
CMD ["/usr/bin/supervisord"]
