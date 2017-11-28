#
# dubboadmin2.5.4
#

FROM yi/centos7-tomcat7
MAINTAINER Yi.Ma <findlymw@gmail.com>

WORKDIR /home/work/apps/
RUN mkdir -p /usr/local/apache-tomcat-7.0.82/webapps/dubboadmin/

COPY dubbo-admin-2.5.4.war /usr/local/apache-tomcat-7.0.82/webapps/dubboadmin/
RUN jar -xvf  /usr/local/apache-tomcat-7.0.82/webapps/dubboadmin/dubbo-admin-2.5.4.war
RUN rm /usr/local/apache-tomcat-7.0.82/webapps/dubboadmin/dubbo-admin-2.5.4.war


EXPOSE 8080