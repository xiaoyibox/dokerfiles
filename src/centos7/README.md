# Centos7 From Yi

1. docker pull centos
2. Excution : Docker build -t 'yi/centos7-ssh' .
~~~
FROM centos
MAINTAINER Yi.Ma <findlymw@gmail.com>
RUN yum -y update
RUN yum install -y passwd openssh-server openssh-clients initscripts net-tool

RUN echo 'root:root' | chpasswd
RUN /usr/sbin/sshd-keygen

EXPOSE 22
CMD /usr/sbin/sshd -D
~~~