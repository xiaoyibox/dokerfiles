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
#### root权限下，su postgres就进入了bash脚本，psql命令进入数据库
进入命令行
~~~
su postgres
view : bash-4.2$ 输入 psql
view : psql(9.6.6)
view : Type "help" for help.

#修改密码
\password 
 

#修改密码为123456,分号【;】是必须的
view : postgres=# 输入 ： ALTER USER postgres WITH PASSWORD '123456';
view : ALTER ROLE

#退出
view : postgres=# 输入 \q
view : bash-4.2$ 输入 su root
view : password : 
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