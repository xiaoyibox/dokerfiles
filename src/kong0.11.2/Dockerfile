#
# KONG 0.11.2.el7
# Dependyce yi/centos7-ssh
#


FROM yi/centos7-ssh
MAINTAINER Yi.Ma <findlymw@gmail.com>

RUN yum clean all
RUN yum -y update
# Install libs
WORKDIR /home/work/apps/

RUN yum install epel-release -y

RUN yum https://bintray.com/kong/kong-community-edition-rpm -y

RUN yum install kong-community-edition-0.11.2.*.noarch.rpm --nogpgcheck
