### Tengine2.2.1
##### Tengine Info
~~~ shell
Configuration summary
  + using system PCRE library
  + using system OpenSSL library
  + md5: using OpenSSL library
  + sha1: using OpenSSL library
  + using system zlib library
  + jemalloc library is disabled

  nginx path prefix: "/usr/local/nginx"
  nginx binary file: "/usr/local/nginx/sbin/nginx"
  nginx configuration prefix: "/usr/local/nginx/conf"
  nginx configuration file: "/usr/local/nginx/conf/nginx.conf"
  nginx pid file: "/usr/local/nginx/logs/nginx.pid"
  nginx error log file: "/usr/local/nginx/logs/error.log"
  nginx http access log file: "/usr/local/nginx/logs/access.log"
  nginx http client request body temporary files: "client_body_temp"
  nginx dso module path: "/usr/local/nginx/modules/"
  nginx http proxy temporary files: "proxy_temp"
  nginx http fastcgi temporary files: "fastcgi_temp"
  nginx http uwsgi temporary files: "uwsgi_temp"
  nginx http scgi temporary files: "scgi_temp"
~~~
##### Build:
~~~ 
docker build -t "centos-ssh-tengine/1.0.1" .
~~~
#### run image
~~~
docker run -d -p 3000:22 -p 3001:80 --net=bridge --name tengine --restart=always centos-ssh-tengine/1.0.1
~~~

### [注意：这里使用的是yi/centos7镜像的话，SSH的密码就是root]
