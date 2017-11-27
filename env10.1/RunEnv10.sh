#!/bin/sh
# ----------------------------------
#Run Env10
### 10 is Ip . e.g. 192.168.10.1
# ----------------------------------
echo 'Runing 192.168.10.1 ...'
echo 'Destroy all Containers'
echo 'Destroy env10_2_Nginx01'
docker rm env10_2_Nginx01
echo 'Destroy env10_3_Redis01'
docker rm env10_3_Redis01
echo 'Destroy env10_4_Mysql01'
docker rm env10_4_Mysql01
echo 'Destory env10_5_Zookeeper01'
docker rm env10_5_Zookeeper01
echo 'Destory env10_6_Mq01'
docker rm env10_6_Mq01
echo 'Desory env10_7_Mycat01'
docker rm env10_7_Mycat01
echo '==================================================='
echo 'Remove docker network bridge env10'
docker network rm env10
echo '-------------------------Create new Network env10--------------------------'
docker network create -d bridge --subnet 192.168.10.0/24 env10
echo 'Run env10_2_Nginx01'
docker run -d -p 3000:80 --net=env10 --ip=192.168.10.2 --restart=always --name env10_2_Nginx01 yi/centos7-ssh-tengine

echo 'over ^_^'

