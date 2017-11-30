# KONG
## Default port : 8001
### Website：https://konghq.com
#### Install
##### Env 
![image](https://2tjosk2rxzc21medji3nfn1g-wpengine.netdna-ssl.com/wp-content/uploads/2017/08/centos.svg)
###### CentOS7

~~~
wget https://bintray.com/kong/kong-community-edition-rpm/rpm -O bintray-kong-kong-community-edition-rpm.repo

mv bintray-kong-kong-community-edition-rpm.repo /etc/yum.repos.d/

yum install epel-release -y

yum install kong -y
~~~

#####  Kong supports both PostgreSQL 9.4+ and Cassandra 3.x.x as its datastore.
If you are using PostgreSQL, please provision a database and a user, ie:
~~~
CREATE USER kong; CREATE DATABASE kong OWNER kong;
~~~