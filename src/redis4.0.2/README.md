### redis4.0.2 stable
##### [etc/redis.conf : redis conf file]
##### [supervisord.conf : start service apps]
~~~
FROM yi/centos7-ssh
MAINTAINER Yi.Ma <findlymw@gmail.com>
RUN yum clean all
RUN yum -y update
# Install libs
RUN yum install deltarpm rpm make tar gcc gcc-c++ epel-release -y

RUN mkdir -p /home/work/apps/
RUN mkdir -p /var/log/redis/
# Copy Redis tar.gz and auto uncompress
ADD redis-4.0.2.tar.gz /home/work/apps
ADD etc/redis.conf /etc/redis.conf

COPY supervisord.conf /etc/supervisord.conf

# Install redis
WORKDIR /home/work/apps/redis-4.0.2/
RUN make
RUN make && make install

 CMD ["/usr/bin/supervisord"]

# Expose ports.
EXPOSE 6379
~~~