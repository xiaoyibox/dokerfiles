#
# dubboadmin2.5.4
#

FROM yi/centos7-jdk8u151
MAINTAINER Yi.Ma <findlymw@gmail.com>
RUN yum clean all
RUN yum -y update

WORKDIR /home/work/apps/

COPY dubbo-admin-2.5.4.war /home/work/apps/
RUN jar -xvf  dubbo-admin-2.5.4.war


EXPOSE 8080