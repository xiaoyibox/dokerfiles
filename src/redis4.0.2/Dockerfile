#
# Dockerfile for Redis-4.0.2
#
FROM yi/centos7-sshd
MAINTAINER Yi.Ma <findlymw@gmail.com>
RUN yum clean all
RUN yum -y update
# Install libs
RUN yum install deltarpm rpm make tar \
         gcc gcc-c++ epel-release -y

RUN mkdir -p /home/work/apps/
WORKDIR /home/work/apps/
# Copy Redis tar.gz
ADD redis-4.0.2.tar.gz /home/work/apps/redis-4.0.2.tar.gz
ADD etc/redis.conf /etc/redis.conf
RUN tar -zxvf redis-4.0.2.tar.gz

# Install redis
WORKDIR /home/work/apps/redis-4.0.2/
RUN make


# User
USER root
