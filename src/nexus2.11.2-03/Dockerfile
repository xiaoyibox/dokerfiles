#
# Nexus2.11.2-03
#

FROM yi/centos7-jdk8u151
MAINTAINER Yi.Ma <findlymw@gmail.com>

RUN yum clean all
RUN yum -y update
# Install libs
WORKDIR /home/work/apps/
RUN wget https://sonatype-download.global.ssl.fastly.net/nexus/oss/nexus-2.11.2-03-bundle.tar.gz
RUN mkdir /usr/local/nexus
RUN tar -zxvf nexus-2.11.2-03-bundle.tar.gz  -C /usr/local/nexus/
WORKDIR /usr/local/nexus/
RUN rm /home/work/apps/nexus-2.11.2-03-bundle.tar.gz
COPY nexus /usr/local/nexus/nexus-2.11.2-03/bin/nexus
COPY nexus.properties /usr/local/nexus/nexus-2.11.2-03/conf/nexus.properties
WORKDIR /usr/local/nexus/nexus-2.11.2-03/bin/
RUN chmod 777 nexus
WORKDIR /usr/local/nexus/nexus-2.11.2-03/
EXPOSE 8081
COPY supervisord.conf /etc/supervisord.conf
CMD ["/usr/bin/supervisord"]
