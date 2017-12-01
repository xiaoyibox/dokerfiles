# PostpreSQL9.6

## start docker 【Fixed D-Bus connection】
> --privileged=true\
> /usr/sbin/init


### docker run -d -p 5432:5432 --ip=192.168.10.9 --net=env10 --privileged=true --name env10_9_postpresql --restart=always yi/centos7-postpresql9.6 /usr/sbin/init

### Port:5432

## 进入系统后

### 1 初始化数据库
RUN /usr/pgsql-9.6/bin/postgresql96-setup initdb

### 2 copy conf files

cp /home/work/apps/pg_hba.conf /var/lib/pgsql/9.6/data/pg_hba.conf
cp /home/work/apps/postgresql.conf /var/lib/pgsql/9.6/data/postgresql.conf

重启：service postgresql-9.6 restart
状态：service postgresql-9.6 status  [绿色的等是正常]




### 3 安装完成后，需要修改密码
#### PostgreSQL数据库创建一个postgres用户作为数据库的管理员，密码随机，所以需要修改密码，方式如下：
#### root权限下，su postgres就进入了bash脚本，psql命令进入数据库
##### 密码postgres要用引号引起来
进入命令行
~~~
su postgres
view : bash-4.2$ 输入 psql
view : psql(9.6.6)
view : Type "help" for help.

#修改密码
\password postgres


#修改密码为123456,分号【;】是必须的
view : postgres=# 输入 ： ALTER USER postgres WITH PASSWORD '123456';
view : ALTER ROLE

#退出
view : postgres=# 输入 \q
view : bash-4.2$ 输入 exit



#修改linux系统postgres用户的密码
#PostgreSQL会创建一个默认的linux用户postgres，修改该用户密码的方法如下：
passwd -d postgres
-u postgres passwd
#系统提示输入新的密码
Enter new UNIX password:
Retype new UNIX password:
passwd: password updated successfully
~~~

# 为KONG创建用户
~~~
#创建用户kong
postgres=# create user kong;
CREATE ROLE 
#创建数据kong，指定用户为kong
CREATE DATABASE kong OWNER kong;
CREATE DATABASE
#给kong设置密码
\password kong
Enter new password:123456
Enter it again:123456
\q
~~~




# 启动数据库
 systemctl start postgresql-9.6.service or service postgresql-9.6 start
# 重启数据
systemctl restart postgresql-9.6.service or service postgresql-9.6 restart
# 停止数据库
systemctl stop postgresql-9.6.service or service postgresql-9.6 stop

### 卸载
~~~
yum erase postgresql96
~~~