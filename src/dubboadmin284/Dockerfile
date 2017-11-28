#
# dubboadmin2.5.4
#

FROM yi/centos7-tomcat7
MAINTAINER Yi.Ma <findlymw@gmail.com>


RUN mkdir -p /usr/local/apache-tomcat-7.0.82/webapps/

ADD dubbo-admin-2.8.4.zip /usr/local/apache-tomcat-7.0.82/webapps/

WORKDIR /usr/local/apache-tomcat-7.0.82/webapps/

RUN unzip dubbo-admin-2.8.4.zip
RUN mv dubbo-admin-2.8.4 dubboadmin
RUN rm dubbo-admin-2.8.4.zip
