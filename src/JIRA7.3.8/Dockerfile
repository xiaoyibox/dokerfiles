#
# JIRA 7.3.8
#

FROM yi/centos7-jdk8u151
MAINTAINER Yi.Ma <findlymw@gmail.com>
RUN yum clean all
RUN yum -y update

WORKDIR /home/work/apps/

RUN wget https://downloads.atlassian.com/software/jira/downloads/atlassian-jira-software-7.3.8-x64.bin

RUN chmod 777 atlassian-jira-software-7.3.8-x64.bin
COPY atlassian-extras-3.2.jar /home/work/apps/
COPY mysql-connector-java-5.1.39-bin.jar /home/work/apps/

EXPOSE 8080