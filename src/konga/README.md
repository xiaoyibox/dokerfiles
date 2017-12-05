# KONGA
## Default port : 1338
### Domain : konga.local.com
#### project addr:https://github.com/pantsel/konga

###### 1338用户名：
~~~
demo
demodemodemo

admin
adminadminadmin
~~~

#### 在POSTGRESQL中添加用户和数据库kanga，同时修改konga的密码为123456
~~~
CREATE USER konga; 

CREATE DATABASE konga OWNER konga;


\password konga

input : 123456
~~~

修改配置：
~~~
vi ./config/local.js
vi ./config/connections.js
~~~

在UI界面的CONNECTIONS中添加连接：
name:admin
type:default
KONG ADMIN URL : http://192.168.10.8:8001

### Production Docker Image
~~~
$ docker pull pantsel/konga
$ docker run -p 1338:1338 
             --link kong:kong
             --name konga
             -e "NODE_ENV=production" \ // or "development" | defaults to 'development'
             pantsel/konga
~~~



配置带有数据库连接的Container
To use one of the supported databases
Demo:
~~~
// As stated before, in case of 'postgres','sqlserver'  or 'mysql' adapters,
// the app must be started in development mode the first time in order to be able to apply migrations.
// You can do that by bashing into Konga's container and running 'node app.js --dev'.
// You may also need to add an extra link that points to your database container.
$ docker run -p 1337:1337 
             --link kong:kong \
             -e "DB_ADAPTER=the-name-of-the-adapter" \ // 'mongo','postgres','sqlserver'  or 'mysql'
             -e "DB_HOST=your-db-hostname" \
             -e "DB_PORT=your-db-port" \ // Defaults to the default db port
             -e "DB_USER=your-db-user" \ // Omit if not relevant
             -e "DB_PASSWORD=your-db-password" \ // Omit if not relevant
             -e "DB_DATABASE=your-db-name" \ // Defaults to 'konga_database'
             -e "NODE_ENV=production" \ // or 'development' | defaults to 'development'
             --name konga \
             pantsel/konga
~~~


