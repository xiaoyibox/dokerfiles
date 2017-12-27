# Centos7 From Yi

1. docker pull centos
2. Excution : Docker build -t 'yi/centos7-ssh' .
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

### supervisor 通过脚本进行多应用的启动
##### 使用yum install python-setuptools -y来安装supervisor
> 默认的yum安装不了 supervisor
~~~
RUN yum install python-setuptools -y
RUN easy_install supervisor
~~~


### 单机连通性测试

启动2个XSHELL客户端，一个用于生产者发送消息，一个用于消费者接受消息。

运行producer，随机敲入几个字符，相当于把这个敲入的字符消息发送给队列。

bin/kafka-console-producer.sh --broker-list 192.168.1.181:9092 --topic test
说明：早版本的Kafka，–broker-list 192.168.1.181:9092需改为–zookeeper 192.168.1.181:2181

运行consumer，可以看到刚才发送的消息列表。

bin/kafka-console-consumer.sh --zookeeper 192.168.1.181:2181 --topic test --from-beginning  
注意：

producer，指定的Socket(192.168.1.181+9092),说明生产者的消息要发往kafka，也即是broker

consumer, 指定的Socket(192.168.1.181+2181),说明消费者的消息来自zookeeper（协调转发）

上面的只是一个单个的broker，下面我们来实验一个多broker的集群。

