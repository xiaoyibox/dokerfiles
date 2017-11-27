#
# Nginx-Tengine2.2.1 Dockerfile
#

#Pull and From base image
FROM yi/centos7-ssh

MAINTAINER Yi.Ma <findlymw@gmail.com>
RUN yum clean all
RUN yum -y update
# Install libs
RUN yum install deltarpm rpm make wget tar unzip \
         gcc gcc-c++ pcre pcre-devel zlib zlib-devel openssl openssl-devel -y
         
# Create work dirs         
RUN mkdir -p /home/work/apps/
# in workdir
WORKDIR /home/work/apps/
# get tengine2.2.1.tar.gz from network
RUN wget http://tengine.taobao.org/download/tengine-2.2.1.tar.gz
RUN tar -zxvf tengine-2.2.1.tar.gz
#change workdir
WORKDIR /home/work/apps/tengine-2.2.1
# compile and install
RUN ./configure && make && make install


COPY nginx.conf /usr/local/nginx/conf/nginx.conf

# add ENV 
ENV NGINX_HOME /usr/local/nginx

# open ports
EXPOSE 80
EXPOSE 22


#Run nginx engine
CMD ["/usr/local/nginx/sbin/nginx"]
