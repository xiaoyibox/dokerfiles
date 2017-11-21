### JDK-8U151

~~~
FROM yi/centos7-ssh
MAINTAINER Yi.Ma <findlymw@gmail.com>
RUN yum clean all
RUN yum -y update
# Install libs
RUN yum install deltarpm rpm make wget tar unzip \
         gcc gcc-c++ -y

RUN mkdir -p /home/work/apps/
RUN mkdir -p /usr/local/java/
WORKDIR /home/work/apps/
RUN wget --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie;" http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.tar.gz
RUN tar -zxvf jdk-8u151-linux-x64.tar.gz
RUN mv -f jdk1.8.0_151/ /usr/local/java/jdk1.8.0_151
ENV JAVA_HOME=/usr/local/java/jdk1.8.0_151
ENV PATH=$JAVA_HOME/bin:$PATH
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

# open ports
EXPOSE 22
~~~

> jdk path : /usr/local/java/jdk1.8.0_151


