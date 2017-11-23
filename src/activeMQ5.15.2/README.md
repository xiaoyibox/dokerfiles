# Active MQ

### http://archive.apache.org/dist/activemq/5.15.2/apache-activemq-5.15.2-bin.tar.gz

#### ports: 8161 & 8162

##### Visit Addr:
http://ip:8161/ default port : 8161 

##### Monit
http://ip:8161/admin/queues.jsp,U/P:admin/admin

##### other status
service activemq status

##### start & open service
service activemq start
service activemq stop

##### set opening system start and stop
chkconfig activemq on
chkconfig activemq off

##### docker run
~~~
docker run -d -p 5000:8161 --net=bridge --name xxxx --restart=always yi/centos7-activemq5.15.2:latest
~~~