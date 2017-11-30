#
# KONG 0.10.4-1
# Dependyce yi/centos7-ssh
# Default port : 8001
#


FROM yi/centos7-ssh
MAINTAINER Yi.Ma <findlymw@gmail.com>

# Install libs
WORKDIR /home/work/apps/

RUN yum install wget pcre pcre-devel zlib zlib-devel openssl openssl-devel -y

RUN wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists/kong-community-edition-0.11.2.el7.noarch.rpm

RUN yum install epel-release -y

RUN rpm -ivh kong-community-edition-0.11.2.el7.noarch.rpm

