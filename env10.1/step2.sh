#!/bin/sh
# ----------------------------------
#Run Env10
### 10 is Ip . e.g. 192.168.10.1
### Run Env ...
# ----------------------------------
echo 'Runing 192.168.10.1 ...'
echo 'Destroy all Containers'
echo 'Destroy env10_2_Nginx01'
docker stop env10_2_Nginx01
docker rm env10_2_Nginx01
echo 'Destroy env10_3_Redis01'
docker stop env10_3_Redis01
docker rm env10_3_Redis01
echo 'Destroy env10_4_Mysql01'
docker stop env10_4_Mysql01
docker rm env10_4_Mysql01
echo 'Destory env10_5_Zookeeper01'
docker stop env10_5_Zookeeper01
docker rm env10_5_Zookeeper01
echo 'Destory env10_6_Mq01'
docker stop env10_6_Mq01
docker rm env10_6_Mq01
echo 'Desory env10_7_Mycat01'
docker stop env10_7_Mycat01
docker rm env10_7_Mycat01

echo 'Desory env10_201_confluence'
docker stop env10_201_confluence
docker rm env10_201_confluence

echo 'Desory env10_202_jira'
docker stop env10_202_jira
docker rm env10_202_jira
echo '==================================================='
echo 'Remove docker network bridge env10'
docker network rm env10
echo '-------------------------Create new Network env10--------------------------'
docker network create -d bridge --subnet 192.168.10.0/24 env10
echo 'Run env10_2_Nginx01'
docker run -d -p 80:80 -m 256M --net=env10 --ip=192.168.10.2 --restart=always --name env10_2_Nginx01 yi/centos7-ssh-tengine-local
echo 'Run env10_3_Redis01'
docker run -d  -m 256M --net=env10 --ip=192.168.10.3 --restart=always --name env10_3_Redis01 yi/centos7-redis
echo 'Run env10_4_Mysql01'
docker run -d -p 3306:3306  -m 256M  --net=env10 --ip=192.168.10.4 --restart=always --name env10_4_Mysql01 yi/centos7-mysql5.6.38
echo 'Run env10_5_Zookeeper01'
docker run -d  -m 256M --net=env10 --ip=192.168.10.5 --restart=always --name env10_5_Zookeeper01 yi/centos7-zookeeper3.4.11
echo 'Run env10_6_Mq01'
docker run -d  -m 256M --net=env10 --ip=192.168.10.6 --restart=always --name env10_6_Mq01 yi/centos7-activemq5.15.2
echo 'Run env10_7_Mycat01'
docker run -d  -m 256M --net=env10 --ip=192.168.10.7 --restart=always --name env10_7_Mycat01 yi/centos7-mycat1.6

echo 'Run env10_201_confluence'
docker run -d -m 1024M --net=env10 --ip=192.168.10.201 --restart=always --name env10_201_confluence yi/centos7-confluence
echo 'Run env10_202_jira'
docker run -d -m 1024M --net=env10 --ip=192.168.10.202 --restart=always --name env10_202_jira yi/centos7-jira


echo 'over ^_^'

