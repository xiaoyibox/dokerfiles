# ENV10.1

### IP : 192.168.10.1/24

#### Steps:
##### 1 Create Bridge
Default 3 NETWORKs in docker
~~~
docker network ls
NETWORK ID          NAME                DRIVER              SCOPE
7723e909a053        bridge              bridge              local
9a480d6809a7        host                host                local
cbf81f30d9ac        none                null                local
~~~
View Detail
~~~
docker network inspect bridge OR containerID name
~~~

Create bridge:
~~~
docker network create -d bridge --subnet 192.168.10.0/24 env10
~~~

Run Container:
~~~
docker run -itd -p host port : container port -p etc. --net=bridge name --ip=container ip \
--name [container name] [image name]
~~~

Check Container network:
~~~
docker network inspect containerName 
~~~
