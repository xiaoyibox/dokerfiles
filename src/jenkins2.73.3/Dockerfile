#
# Jenkins 2.73.3
#
# http://mirrors.jenkins.io/war-stable/latest/jenkins.war

FROM yi/centos7-tomcat7
MAINTAINER Yi.Ma <findlymw@gmail.com>


WORKDIR /usr/local/apache-tomcat-7.0.82/webapps/ROOT/
RUN rm -fr ./*
RUN wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war


RUN jar -xvf jenkins.war
RUN rm jenkins.war


WORKDIR /usr/local/apache-tomcat-7.0.82/webapps/
RUN rm -fr docs
RUN rm -fr examples
RUN rm -fr manager
RUN rm -fr host-manager
