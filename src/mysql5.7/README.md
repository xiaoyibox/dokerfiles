# MySQL 5.7 Docker

~~~
groupadd mysql
useradd -g mysql mysql
wget https://dev.mysql.com/get/Downloads/MySQL-5.6/mysql-5.6.38-linux-glibc2.12-x86_64.tar.gz
~~~

yum install -y libaio
yum install numactl -y
yum -y install autoconf

./scripts/mysql_install_db --user=mysql --basedir=/usr/local/mysql/ --datadir=/usr/local/mysql/data/

cp /usr/local/mysql/bin/mysql /usr/bin/



You can start the MySQL daemon with:                                                                                                                                                      
                                                                                                                                                                                          
  cd . ; /usr/local/mysql//bin/mysqld_safe &                                                                                                                                              
                                                                                                                                                                                          
You can test the MySQL daemon with mysql-test-run.pl                                                                                                                                      
                                                                                                                                                                                          
  cd mysql-test ; perl mysql-test-run.pl                                                                                                                                                  
                                                                                                                                                                                          
Please report any problems at http://bugs.mysql.com/                                                                                                                                      
                                                                                                                                                                                          
The latest information about MySQL is available on the web at                                                                                                                             
                                                                                                                                                                                          
  http://www.mysql.com                                                                                                                                                                    
                                                                                                                                                                                          
Support MySQL by buying support/licenses at http://shop.mysql.com                                                                                                                         
                                                                                                                                                                                          
WARNING: Found existing config file /usr/local/mysql//my.cnf on the system.                                                                                                               
Because this file might be in use, it was not replaced,                                                                                                                                   
but was used in bootstrap (unless you used --defaults-file)                                                                                                                               
and when you later start the server.                                                                                                                                                      
The new default config file was created as /usr/local/mysql//my-new.cnf,                                                                                                                  
please compare it with your file and take the changes you need.                                                                                                                           
                                                                                                                                                                                          
WARNING: Default config file /etc/my.cnf exists on the system                                                                                                                             
This file will be read by default by the MySQL server                                                                                                                                     
If you do not want to use this, either remove it, or use the                                                                                                                              
--defaults-file argument to mysqld_safe when starting the server    