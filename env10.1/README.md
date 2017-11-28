# ENV10.1

### IP : 192.168.10.1/24

##### 1. 在hosts中配置一下域名
~~~
192.168.110.140 jira.local.com
192.168.110.140 mq.local.com
192.168.110.140 confluence.local.com
~~~

##### 2. 给env10.1下的所有.sh授权
~~~
chmod 777 *.sh
~~~

##### 3. 运行step1.sh 构建所有的镜像

##### 4. 运行step2.sh 运行所有的容器

##### 5. 配置mysql
~~~
mysql -uroot -p
# input password [default none]
# set remote connection
# grant all privileges on *.* to root@'%' identified by '123456' with grant option;
mysql > grant all privileges on *.* to root@'%' identified by 'newpassword' with grant option;
mysql > flush privileges;
~~~

##### 6. 安装JIRA : URL : http://jira.local.com
~~~
# in jira server ： /home/work/apps/
# Running 
./atlassian-jira-software-7.3.8-x64.bin
# input o
# input 1
# input i
# input y
# -----------installed---------- #
# Installation Directory: /opt/atlassian/jira
# Home Directory: /var/atlassian/application-data/jira
# HTTP Port: 8080
# RMI Port: 8005

# ------- jira Commond-------#
/etc/rc.d/init.d/jira [start|stop]
~~~

关闭jira，并将mysql的驱动jar包拷贝到如下路径：
~~~
/etc/rc.d/init.d/jira stop
cp /home/work/apps/mysql-connector-java-5.1.39-bin.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/lib/
/etc/rc.d/init.d/jira start
~~~
进入网页进行安装，选择生产环境安装，选择mysql填写mysql的相关信息，点击测试连接，成功后，就可以继续了。等待的过程中会报错，然后再次访问主域名继续即可。在进行授权的时候，到官网去授权，然后关闭jira，拷贝破解文件到一下路径，重启jira，完成破解。
~~~
/etc/rc.d/init.d/jira stop
cp /home/work/apps/atlassian-extras-3.2.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/lib/
/etc/rc.d/init.d/jira start
~~~
完成破解,截至日期：08/二月/33


##### 7. 安装Confluence : URL : http://confluence.local.com
~~~
# in jira server ： /home/work/apps/
# Running 
./atlassian-jira-software-7.3.8-x64.bin
# input o
# input 1
# input i
# input y
# -----------installed---------- #
# Installation Directory: /opt/atlassian/jira
# Home Directory: /var/atlassian/application-data/jira
# HTTP Port: 8080
# RMI Port: 8005

# ------- jira Commond-------#
/etc/rc.d/init.d/jira [start|stop]
~~~

关闭jira，并将mysql的驱动jar包拷贝到如下路径：
~~~
/etc/rc.d/init.d/jira stop
cp /home/work/apps/mysql-connector-java-5.1.39-bin.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/lib/
/etc/rc.d/init.d/jira start
~~~
进入网页进行安装，选择生产环境安装，选择mysql填写mysql的相关信息，点击测试连接，成功后，就可以继续了。等待的过程中会报错，然后再次访问主域名继续即可。在进行授权的时候，到官网去授权，然后关闭jira，拷贝破解文件到一下路径，重启jira，完成破解。
~~~
/etc/rc.d/init.d/jira stop
cp /home/work/apps/atlassian-extras-3.2.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/lib/
/etc/rc.d/init.d/jira start
~~~
完成破解,截至日期：08/二月/33





---

#### Steps:
##### 1 Create Bridge
Default 3 NETWORKs in docker
~~~
docker network ls
NETWORK ID          NAME                DRIVER              SCOPE
7723e909a053        bridge              bridge              local
9a480d6809a7        host                host                local
cbf81f30d9ac        none                null                local
~~~
View Detail
~~~
docker network inspect bridge OR containerID name
~~~

Create bridge:
~~~
docker network create -d bridge --subnet 192.168.10.0/24 env10
~~~

Run Container:
~~~
docker run -itd -p host port : container port -p etc. --net=bridge name --ip=container ip  --restart=always \
--name [container name] [image name]
~~~

Check Container network:
~~~
docker network inspect containerName 
~~~

Remove network
~~~
# cut connection of all container
docker network disconnet bridgeName containerName
# Remove network
docker network rm bridgeName
~~~




