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
echo 'over ^_^'

