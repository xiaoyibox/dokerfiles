#!/bin/bash

who=$1

bridgename="env10"
bridgeip="192.168.10.0/24"

containers[0]="env10_2_Nginx01"
containers[1]="env10_3_Redis01"
containers[2]="env10_4_Mysql01"
containers[3]="env10_5_Zookeeper01"
containers[4]="env10_6_Mq01"
containers[5]="env10_7_Mycat01"
containers[6]="env10_201_confluence"
containers[7]="env10_202_jira"
containers[8]="env10_203_dubboadmin"
containers[9]="env10_204_jenkins"
containers[10]="env10_8_Kong01"
containers[11]="env10_9_postgresql01"
containers[12]="env10_100_nodejs01"
containers[13]="env10_205_eureka"
containers[14]="env10_206_konga"
containers[15]="env10_207_nexus"
containers[16]="env10_210_kafka"










if [[ "$who"x == "nginx"x ]]; then
	docker stop ${containers[0]}
	docker rm ${containers[0]}
	docker run -d -p 80:80 --net=${bridgename} --ip=192.168.10.2 --restart=always --name ${containers[0]} yi/centos7-ssh-tengine-local
elif [[ "$who"x == "redis"x ]]; then
	docker stop ${containers[1]}
	docker rm ${containers[1]}
	docker run -d --net=${bridgename} --ip=192.168.10.3 --restart=always --name ${containers[1]} yi/centos7-redis
elif [[ "$who"x == "mysql"x ]]; then
	docker stop ${containers[2]}
	docker rm ${containers[2]}
	docker run -d -p 3306:3306 --net=${bridgename} --ip=192.168.10.4 --restart=always --name ${containers[2]} yi/centos7-mysql5.6.38
elif [[ "$who"x == "zookeeper"x ]]; then
	docker stop ${containers[3]}
	docker rm ${containers[3]}
	docker run -d -p 2181:2181 -p 2888:2888 -p 3888:3888 -p 20880:20880 --net=${bridgename} --ip=192.168.10.5 --restart=always --name ${containers[3]} yi/centos7-zookeeper3.4.11
elif [[ "$who"x == "mq"x ]]; then
	docker stop ${containers[4]}
	docker rm ${containers[4]}
	docker run -d --net=${bridgename} --ip=192.168.10.6 --restart=always --name ${containers[4]} yi/centos7-activemq5.15.2
elif [[ "$who"x == "mycat"x ]]; then
	docker stop ${containers[5]}
	docker rm ${containers[5]}
	docker run -d --net=${bridgename} --ip=192.168.10.7 --restart=always --name ${containers[5]} yi/centos7-mycat1.6
elif [[ "$who"x == "confluence"x ]]; then
	docker stop ${containers[6]}
	docker rm ${containers[6]}
	docker run -d --net=${bridgename} --ip=192.168.10.201 --restart=always --name ${containers[6]} yi/centos7-confluence
elif [[ "$who"x == "jira"x ]]; then
	docker stop ${containers[7]}
	docker rm ${containers[7]}
	docker run -d --net=${bridgename} --ip=192.168.10.202 --restart=always --name ${containers[7]} yi/centos7-jira
elif [[ "$who"x == "dubboadmin"x ]]; then
	docker stop ${containers[8]}
	docker rm ${containers[8]}
	docker run -d --net=${bridgename} --ip=192.168.10.203 --restart=always --name ${containers[8]} yi/centos7-dubboadmin284
elif [[ "$who"x == "jenkins"x ]]; then
	docker stop ${containers[9]}
	docker rm ${containers[9]}
	docker run -d --net=${bridgename} --ip=192.168.10.204 --restart=always --name ${containers[9]} yi/centos7-jenkins
elif [[ "$who"x == "kong"x ]]; then
	docker stop ${containers[10]}
	docker rm ${containers[10]}
	docker run -d -p 8001:22 --net=${bridgename} --ip=192.168.10.8 --restart=always --name ${containers[10]} yi/centos7-kong
elif [[ "$who"x == "postgresql"x ]] ; then
	docker stop ${containers[11]}
	docker rm ${containers[11]}
	docker run -d -p 5432:5432 --net=${bridgename} --ip=192.168.10.9 --privileged=true --name ${containers[11]} --restart=always yi/centos7-postgresql9.6 /usr/sbin/init
elif [[ "$who"x == "nodejs"x ]]; then
	docker stop ${containers[12]}
	docker rm ${containers[12]}
	docker run -d --net=${bridgename} --ip=192.168.10.100 --restart=always --name ${containers[12]} yi/centos7-nodejs
elif [[ "$who"x == "geteureka"x ]]; then
	docker stop ${containers[13]}
	docker rm ${containers[13]}
	docker run -d --net=${bridgename} --ip=192.168.10.205 --restart=always --name ${containers[13]} yi/centos7-eureka
elif [[ "$who"x == "konga"x ]]; then
	docker stop ${containers[14]}
	docker rm ${containers[14]}
	docker run -d --net=${bridgename} --ip=192.168.10.206 --name ${containers[14]} --restart=always -e "NODE_ENV=prodection" yi/centos7-konga
elif [[ "$who"x == "nexus"x ]]; then
	docker stop ${containers[15]}
	docker rm ${containers[15]}
	docker run -d -p 8081:8081 --net=${bridgename} --ip=192.168.10.207 --name ${containers[15]} --restart=always yi/centos7-nexus
elif [[ "$who"x == "kafka"x ]]; then
	docker stop ${containers[16]}
	docker rm ${containers[16]}
	docker run -d -p 9999:22 --net=${bridgename} --ip=192.168.10.210 --name ${containers[16]} --restart=always yi/centos7-kafka
else
	echo "Sorry,no any service."
fi

