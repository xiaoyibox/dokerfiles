#!/bin/bash



#	if [ "$who"x == ""x ] || [ "$del"x == ""x ] ; then
#		echo "Sorry, you must input who and del..."
#	elif [ "$del"x == "yes"x ] || [ "$del"x == "no"x ] || [ "$del"x == "y"x ] || [ "$del"x == "n"x ] ; then
#		if [ "$del"x == "yes"x ] || [ "$del"x == "y"x ] ; then
#			echo "Running [${who}] starting, is del [yes]..."
#		else
#			echo "Running [${who}] starting, is del [no]..."
#		fi	
#	else
#		echo "Sorry, del Failed [${del}]..."
#	fi

# color:echo  "\033[40;31m ME \033[0m"


# active : run destory rebuildAndRun = rbr
active=$1

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

ips[0]="run -d -p 80:80 --net=${bridgename} --ip=192.168.10.2 --restart=always --name ${containers[0]} yi/centos7-ssh-tengine-local"
ips[1]="run -d --net=${bridgename} --ip=192.168.10.3 --restart=always --name ${containers[1]} yi/centos7-redis"
ips[2]="run -d -p 3306:3306 --net=${bridgename} --ip=192.168.10.4 --restart=always --name ${containers[2]} yi/centos7-mysql5.6.38"
ips[3]="run -d --net=${bridgename} --ip=192.168.10.5 --restart=always --name ${containers[3]} yi/centos7-zookeeper3.4.11"
ips[4]="run -d --net=${bridgename} --ip=192.168.10.6 --restart=always --name ${containers[4]} yi/centos7-activemq5.15.2"
ips[5]="run -d --net=${bridgename} --ip=192.168.10.7 --restart=always --name ${containers[5]} yi/centos7-mycat1.6"
ips[6]="run -d --net=${bridgename} --ip=192.168.10.201 --restart=always --name ${containers[6]} yi/centos7-confluence"
ips[7]="run -d --net=${bridgename} --ip=192.168.10.202 --restart=always --name ${containers[7]} yi/centos7-jira"
ips[8]="run -d --net=${bridgename} --ip=192.168.10.203 --restart=always --name ${containers[8]} yi/centos7-dubboadmin284"
ips[9]="run -d --net=${bridgename} --ip=192.168.10.204 --restart=always --name ${containers[9]} yi/centos7-jenkins"



if [[ "$active"x == "init"x ]]; then
	#create net bridge
	echo "Remove docker network bridge ${bridgename}"
	docker network rm $bridgename
	echo "-------------------------Create new Network ${bridgename}--------------------------"
	docker network create -d bridge --subnet $bridgeip $bridgename
	echo "-------------------------Run All Containers--------------------------"
	for index in "${!containers[@]}"; do
		docker stop $containers[index]
		docker rm $containers[index]
		docker $ips[index]
	done
else
	echo "Sorry,[init] Only."
fi