#
# dubboadmin2.5.4
#

FROM yi/centos7-tomcat7
MAINTAINER Yi.Ma <findlymw@gmail.com>


RUN rm -fr /usr/local/apache-tomcat-7.0.82/webapps/ROOT/*

COPY dubbo-admin-2.5.4.war /usr/local/apache-tomcat-7.0.82/webapps/ROOT/
WORKDIR /usr/local/apache-tomcat-7.0.82/webapps/ROOT/
RUN jar -xvf  dubbo-admin-2.5.4.war
RUN rm dubbo-admin-2.5.4.war

EXPOSE 8080