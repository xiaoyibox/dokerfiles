FROM centos
MAINTAINER Yi.Ma <findlymw@gmail.com>
RUN yum -y update
RUN yum install -y passwd openssh-server openssh-clients initscripts net-tool supervisor

RUN echo 'root:root' | chpasswd
RUN /usr/sbin/sshd-keygen

EXPOSE 22
CMD /usr/sbin/sshd -D