#
# MySQL-5.7
#

FROM yi/centos7-ssh
MAINTAINER Yi.Ma <findlymw@gmail.com>
RUN yum clean all
RUN yum -y update
# Install libs
RUN yum install deltarpm rpm wget -y

RUN mkdir -p /home/work/apps/
WORKDIR /home/work/apps/
RUN wget -i http://dev.mysql.com/get/mysql57-community-release-el7-7.noarch.rpm
RUN yum -y install mysql57-community-release-el7-7.noarch.rpm
RUN yum -y install mysql-community-server

EXPOSE 6379

CMD ["/usr/sbin/init"]