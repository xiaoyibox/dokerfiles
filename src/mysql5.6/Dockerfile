#
# MySQL 5.7
#
FROM yi/centos7-ssh
MAINTAINER Yi.Ma <findlymw@gmail.com>

RUN yum clean all
RUN yum -y update
# Install libs
RUN yum install libaio numactl autoconf wget tar gcc gcc-c++ -y

RUN mkdir -p /home/work/apps/
RUN mkdir -p /var/lib/mysql/
WORKDIR /home/work/apps/

RUN groupadd mysql
RUN useradd -g mysql mysql
RUN wget https://dev.mysql.com/get/Downloads/MySQL-5.6/mysql-5.6.38-linux-glibc2.12-x86_64.tar.gz
RUN mv mysql-5.6.38-linux-glibc2.12-x86_64.tar.gz /usr/local/mysql-5.6.38-linux-glibc2.12-x86_64.tar.gz
WORKDIR /usr/local/
RUN tar xvf mysql-5.6.38-linux-glibc2.12-x86_64.tar.gz
RUN mv mysql-5.6.38-linux-glibc2.12-x86_64 ./mysql
RUN rm mysql-5.6.38-linux-glibc2.12-x86_64.tar.gz

WORKDIR /usr/local/mysql/
RUN chown -R mysql:mysql ./

RUN ./scripts/mysql_install_db --user=mysql --basedir=/usr/local/mysql/ --datadir=/usr/local/mysql/data/
RUN chown -R mysql:mysql data

RUN chown -R mysql:mysql /var/lib/mysql

RUN cp ./support-files/mysql.server /etc/rc.d/init.d/mysqld
RUN chmod +x /etc/rc.d/init.d/mysqld
RUN chkconfig --add mysqld
RUN chkconfig --list mysqld

ENV PATH=$PATH:/usr/local/mysql/bin

ADD etc/my.cnf /etc/my.cnf
RUN chown 777 /etc/my.cnf

COPY supervisord.conf /etc/supervisord.conf

EXPOSE 3306

CMD ["/usr/bin/supervisord"]

