#
# KONG 0.11.2.el7
# Dependyce yi/centos7-ssh
#


FROM yi/centos7-ssh
MAINTAINER Yi.Ma <findlymw@gmail.com>

# Install libs
WORKDIR /home/work/apps/

RUN yum install wget -y

RUN wget https://bintray.com/kong/kong-community-edition-rpm/rpm -O bintray-kong-kong-community-edition-rpm.repo

RUN mv bintray-kong-kong-community-edition-rpm.repo /etc/yum.repos.d/

RUN yum install epel-release -y

RUN yum install kong -y

