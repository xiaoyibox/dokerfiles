# kafka version is 0.9.0.1

### Download addr : http://mirrors.hust.edu.cn/apache/kafka/0.9.0.1/kafka_2.11-0.9.0.1.tgz

#### Env : 
~~~
KAFKA_HOME=/XXXX/XX/XXX/XXX
PATH:$PATH:$KAFKA_HOME/bin
~~~

#### 启动单机模式
~~~
	cd path/kafka_2.11-0.9.0.1/config
	vi server.properties
~~~
修改配置文件中的内容：
~~~
	broker.id=0
	log.dirs=path/kafka_2.11-0.9.0.1/logs
	#zookeeperServers列表，各个节点以逗号分开
	zookeeper.connect=ip:2181,slave1:2181,slave2:2181
~~~
#### 启动程序
##### 首先要确保zookeeper已启动，然后在Kafka目录执行一下启动命令：
~~~
nohup path/bin/kafka-server-start.sh config/server.properties &
~~~
如果没有报错说明启动成功。nohup & 是实现在后台启动
