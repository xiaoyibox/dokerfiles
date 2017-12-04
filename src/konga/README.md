# KONGA
## Default port : 8001

#### 在POSTGRESQL中添加用户和数据库kanga，同时修改konga的密码为123456
~~~
CREATE USER konga; 

CREATE DATABASE konga OWNER konga;


\password konga

input : 123456
~~~
