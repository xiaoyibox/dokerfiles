# Dokerfiles
### centos7-ssh
~~~
FROM centos
MAINTAINER Yi.Ma <findlymw@gmail.com>
RUN yum -y update
RUN yum install -y passwd openssh-server openssh-clients initscripts net-tool
RUN yum install python-setuptools -y
RUN easy_install supervisor
RUN echo 'root:root' | chpasswd
RUN /usr/sbin/sshd-keygen

EXPOSE 22
CMD /usr/sbin/sshd -D
~~~

### tengine-2.2.1 stable
##### Docker build to image
1. cd in dir e.g. 
~~~
cd ../Nginx-Tengine-2.2.1
~~~
2. build to image
~~~
docker build -t "centos-ssh-tengine/1.0.1" .
~~~

### redis4.0.2 stable





### RUN Image
e.g.
~~~
docker run -d -p 3000:22 -p 3001:80 --net=bridge --name tengine --restart=always centos-ssh-tengine/1.0.10
~~~

