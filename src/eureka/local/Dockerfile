#
# Eureka-Server 1.8.7
#

FROM yi/centos7-tomcat7
MAINTAINER Yi.Ma <findlymw@gmail.com>


WORKDIR /usr/local/apache-tomcat-7.0.82/webapps/ROOT/
RUN rm -fr ./*

COPY eureka.zip ./


RUN unzip eureka.zip
RUN rm eureka.zip


WORKDIR /usr/local/apache-tomcat-7.0.82/webapps/
RUN rm -fr docs
RUN rm -fr examples
RUN rm -fr manager
RUN rm -fr host-manager
