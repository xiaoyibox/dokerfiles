# dokerfiles
Dokerfiles of all
### Docker build to image
1. cd in dir e.g. cd ../Nginx-Tengine-2.2.1
2. docker build -t "centos-ssh-tengine/1.0.1" .

### RUN Image
e.g.
~~~
docker run -d -p 3000:22 -p 3001:80 --net=bridge --name tengine --restart=always centos-ssh-tengine/1.0.10
~~~

