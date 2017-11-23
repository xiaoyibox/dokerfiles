# Zookeeper 3.4.11 stable 

##### https://mirrors.tuna.tsinghua.edu.cn/apache/zookeeper/zookeeper-3.4.11/zookeeper-3.4.11.tar.gz

#### dataDir
dataDir=/data/zookeeper/data

dataLogDir=/data/zookeeper/logs 


#### Ports

#2888,3888 are election port

server.1=zookeeper:2888:3888

#### check
~~~
jps
18 QuorumPeerMain                                                          
56 Jps 

# QuorumPeerMain是zookeeper进程，启动正常。
~~~

#### review status
~~~
/usr/local/zookeeper-3.4.11/bin/zkServer.sh status
~~~

#### start & stop
~~~
/usr/local/zookeeper-3.4.11/bin/zkServer.sh start
/usr/local/zookeeper-3.4.11/bin/zkServer.sh stop
~~~
