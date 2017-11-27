#
# Confluence 6.3.1
#

FROM yi/centos7-jdk8u151
MAINTAINER Yi.Ma <findlymw@gmail.com>
RUN yum clean all
RUN yum -y update

WORKDIR /home/work/apps/

RUN wget https://product-downloads.atlassian.com/software/confluence/downloads/atlassian-confluence-6.3.1-x64.bin?spm=5176.100239.blogcont144747.13.cI5d45&file=atlassian-confluence-6.3.1-x64.bin

#RUN chmod 777 atlassian-confluence-6.3.1-x64.bin

COPY atlassian-extras-decoder-v2-3.2.jar /home/work/apps/


EXPOSE 8090
