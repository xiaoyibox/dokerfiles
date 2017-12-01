#
# NodeJS 8.9.1
#
FROM yi/centos7-ssh
MAINTAINER Yi.Ma <findlymw@gmail.com>


RUN mkdir -p /home/work/apps/
WORKDIR /home/work/apps/
RUN yum install gcc make gcc-c++ openssl-devel wget xz -y

RUN wget https://nodejs.org/dist/v8.9.1/node-v8.9.1-linux-x64.tar.xz
