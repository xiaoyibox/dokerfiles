# Dokerfiles

### 使用顺序
1 centos7 FROM centos : docker build -t 'yi/centos7-ssh' .

2 jdk8u151 FROM yi/centos7-ssh : docker build -t 'yi/centos7-jdk8u151' .

3 Nginx-Tengine-2.2.1 FROM yi/centos7-ssh : docker build -t 'yi/centos7-ssh-tengine' .

4 redis4.0.2 FROM yi/centos7-ssh : docker build -t 'yi/centos7-redis' .

5 mysql5.6 FROM yi/centos7-ssh : docker build -t 'yi/centos7-mysql5.6.38' .

6 tomcat7 FROM yi/centos7-jdk8u151 : docker build -t 'yi/centos7-tomcat7' .

7 zookeeper FROM yi/centos7-ssh : docker build -t 'yi/centos7-zookeeper' .



#### Create ALL Images
~~~
#Create image of all.

~~~


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

##### etc/redis.conf : redis conf file

##### supervisord.conf : start service apps


### mysql5.6.38

* Path : /usr/local/mysql

* my.cnf : /etc/my.cnf

### Tomcat 7.0.82
##### path:/usr/local/apache-tomcat-7.0.82


### activeMQ5.15.2
##### ports:8161 & 8162
##### path:/usr/local/apache-activemq-5.15.2


### zookeeper 3.4.11 stable
##### Dependyce JDK8






### RUN Image
e.g.
~~~
docker run -d -p 3000:22 -p 3001:80 --net=bridge --name tengine --restart=always centos-ssh-tengine/1.0.10
~~~

