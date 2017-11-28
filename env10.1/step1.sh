#!/bin/sh
#---------------------
# Create all Images : First install Docker and no any images
#---------------------

echo 'clean all images of centos7'
docker rmi centos yi/centos7-ssh yi/centos7-jdk8u151 yi/centos7-redis yi/centos7-ssh-tengine yi/centos7-mysql5.6.38 yi/centos7-zookeeper3.4.11 
docker rmi yi/centos7-activemq5.15.2 yi/centos7-confluence yi/centos7-jira yi/centos7-mycat1.6 yi/centos7-tomcat7 yi/centos7-dubboadmin254

echo '1. pull centos from Docker'
docker pull centos

echo '2. create centos7 FROM centos ...'
docker build -t 'yi/centos7-ssh' ../src/centos7/

echo '3. jdk8u151 FROM yi/centos7-ssh ...'
docker build -t 'yi/centos7-jdk8u151' ../src/jdk8u151/

echo '4. redis4.0.2 FROM yi/centos7-ssh ...'
docker build -t 'yi/centos7-redis' ../src/redis4.0.2/

echo '5. Tengine FROM yi/centos7-ssh ...'
docker build -t 'yi/centos7-ssh-tengine' ../src/Nginx-Tengine-2.2.1/
docker build -t 'yi/centos7-ssh-tengine-local' ../src/Nginx-Tengine-2.2.1/local.com/

echo '6. mysql5.6 FROM yi/centos7-ssh ...'
docker build -t 'yi/centos7-mysql5.6.38' ../src/mysql5.6/

echo '7. zookeeper FROM yi/centos7-ssh ...'
docker build -t 'yi/centos7-zookeeper3.4.11' ../src/zookeeper3.4.11/

echo '8. activeMQ FROM yi/centos7-jdk8u151 ...'
docker build -t 'yi/centos7-activemq5.15.2' ../src/activeMQ5.15.2/

echo '9. Confluence FROM yi/centos7-jdk8u151 ...'
docker build -t 'yi/centos7-confluence' ../src/Confluence6.3.1/

echo '10. JIRA FROM yi/centos7-jdk8u151 ...'
docker build -t 'yi/centos7-jira' ../src/JIRA7.3.8/

echo '11. Mycat FROM yi/centos7-jdk8u151 ...'
docker build -t 'yi/centos7-mycat1.6' ../src/mycat1.6/

echo '12. Tomcat FROM yi/centos7-jdk8u151 ...'
docker build -t 'yi/centos7-tomcat7' ../src/tomcat7/

echo '13. DubboxAdmin FROM yi/centos7-jdk8u151 ...'
docker build -t 'yi/centos7-dubboadmin284' ../src/dubboadmin284/

echo "that's over"