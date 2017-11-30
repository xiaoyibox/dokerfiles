#
# PostpreSQL-Server 9.6.6
#
FROM yi/centos7-ssh
MAINTAINER Yi.Ma <findlymw@gmail.com>


RUN mkdir -p /home/work/apps/
RUN yum install https://download.postgresql.org/pub/repos/yum/9.6/redhat/rhel-7-x86_64/pgdg-centos96-9.6-3.noarch.rpm -y
RUN yum install postgresql96 postgresql96-server postgresql96-contrib postgresql96-devel -y
#检查是否安装成功
RUN rpm -aq| grep postgres

#设置开机启动数据库
RUN systemctl enable postgresql-9.6.service



COPY pg_hba.conf /home/work/apps/
COPY postgresql.conf /home/work/apps/


#启动数据库
# systemctl start postgresql-9.6.service

WORKDIR /home/work/apps/