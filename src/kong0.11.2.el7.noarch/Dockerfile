#
# KONG 0.11.2.el7.noarch
# Dependyce yi/centos7-ssh
# Default port : 8001
#


FROM yi/centos7-ssh
MAINTAINER Yi.Ma <findlymw@gmail.com>

# Install libs
WORKDIR /home/work/apps/

RUN yum install wget pcre pcre-devel zlib zlib-devel openssl openssl-devel perl-Time-HiRes -y

RUN wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists/kong-community-edition-0.11.2.el7.noarch.rpm

RUN mv download_file?file_path=dists%2Fkong-community-edition-0.11.2.el7.noarch.rpm ./kong-community-edition-0.11.2.el7.noarch.rpm

RUN yum install epel-release -y

RUN rpm -ivh kong-community-edition-0.11.2.el7.noarch.rpm


COPY kong.conf /etc/kong/

COPY supervisord.conf /etc/supervisord.conf
CMD ["/usr/bin/supervisord"]

