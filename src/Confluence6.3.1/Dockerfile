#
# Confluence 6.3.1
#

FROM yi/centos7-jdk8u151
MAINTAINER Yi.Ma <findlymw@gmail.com>
RUN yum clean all
RUN yum -y update

WORKDIR /home/work/apps/

RUN wget https://product-downloads.atlassian.com/software/confluence/downloads/atlassian-confluence-6.3.1-x64.bin

RUN chmod 777 atlassian-confluence-6.3.1-x64.bin

COPY atlassian-extras-decoder-v2-3.2.jar /home/work/apps/
COPY mysql-connector-java-5.1.39-bin.jar /home/work/apps/


EXPOSE 8090
