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




