#
# dubboadmin2.5.4
#

FROM yi/centos7-tomcat7
MAINTAINER Yi.Ma <findlymw@gmail.com>
RUN yum clean all
RUN yum -y update

WORKDIR /home/work/apps/
RUN mkdir -p /usr/local/apache-tomcat-7.0.82/webapps/dubboadmin/

COPY dubbo-admin-2.5.4.war /home/work/apps/
RUN jar -xvf  dubbo-admin-2.5.4.war /usr/local/apache-tomcat-7.0.82/webapps/dubboadmin/


EXPOSE 8080