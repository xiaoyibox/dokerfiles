#
# dubboadmin2.5.4
#

FROM yi/centos7-tomcat7
MAINTAINER Yi.Ma <findlymw@gmail.com>


WORKDIR /usr/local/apache-tomcat-7.0.82/webapps/ROOT/

RUN rm -fr ./*

COPY dubbo-admin-2.8.4.zip /usr/local/apache-tomcat-7.0.82/webapps/

WORKDIR /usr/local/apache-tomcat-7.0.82/webapps/

RUN unzip dubbo-admin-2.8.4.zip
RUN cp -fr dubbo-admin-2.8.4/* ./ROOT
RUN rm dubbo-admin-2.8.4.zip
RUN rm -fr dubbo-admin-2.8.4

COPY dubbo.properties /usr/local/apache-tomcat-7.0.82/webapps/ROOT/WEB-INF/
