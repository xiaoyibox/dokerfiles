# MySQL 5.7 Docker

##### Create Image

~~~
docker build -t 'yi/centos7-5.6.38'
~~~

mysql info:

* Path : /usr/local/mysql
* my.cnf : /etc/my.cnf


Modify root password :

~~~
mysql -uroot -p
# input password [default none]
# set remote connection
mysql > grant all privileges on *.* to root@'%' identified by 'newpassword' with grant option;
mysql > flush privileges;
~~~

Desc:
% : ALL Addr
newpassword : root's new password